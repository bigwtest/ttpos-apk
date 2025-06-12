#!/bin/bash

# 使用方法
# bash ./scripts/translate.sh

# ====== 配置start =======
# 当前目录
current_dir=$(pwd)
# 翻译后，保存文件的目录
config_target_path="$current_dir/packages/i18n/lib/langs"
config_target_suffix="dart"
# 默认语言
config_default_lang="zh_cn"
# 需要翻译的目录
config_translate_path=(
    "$current_dir/packages"
    "$current_dir/apps"
)
# 排除的目录
config_exclude_path=(
    $config_target_path
    "build"
    "test"
    "ios"
    "android"
    "web"
    "windows"
    "macos"
    "linux"
)
# 需要翻译的文件后缀
config_translate_suffix=(
    "dart"
)
# 请求翻译平台，可选值：custom, google
config_translate_platform="custom"
# 1. 自定义翻译平台
config_custom_url="https://aitrans.ttpos.com/translate"
# 2. 谷歌翻译平台
config_google_url="https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&dt=t&ie=UTF-8&oe=UTF-8&tk=736127.854017&multires=1&otf=0&pc=1&trs=1&ssel=0&tsel=0&kc=1"
# ====== 配置end =======

# 添加日志功能
log_message() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1"
}

# 添加进度显示
show_progress() {
    echo -ne "[$(date '+%Y-%m-%d %H:%M:%S')] 正在请求翻译接口，处理进度: $1/$2...\r"
}

# 获取targetPath目录的文件，并返回文件名数组
target_path_files_name() {
    # 如果目录不存在，创建目录
    if [ ! -d "$config_target_path" ]; then
        mkdir -p "$config_target_path"
    fi
    # 重新置空数组
    config_language_list=()
    while IFS= read -r -d '' file; do
        # 使用 basename 去掉后缀
        filename=$(basename "$file" ".$config_target_suffix")
        config_language_list+=("$filename")
    done < <(find "${config_target_path}" -type f -name "*.$config_target_suffix" -print0)
    # 去重
    config_language_list=($(printf "%s\n" "${config_language_list[@]}" | sort -u))
    # 返回已存在的翻译词数组
    echo "${config_language_list[@]}"
}

# 获取已存在的翻译词
get_exists_translate_words() {
    local file_path="${config_target_path}/${config_default_lang}.${config_target_suffix}"
    # 检查文件是否存在且可读
    if [ -r "$file_path" ]; then
        local file_content=$(cat "$file_path")
        # 使用 sed 提取键值
        json_content=$(echo "$file_content" | sed -n '/const zhCN = {/,/^};/p' | sed 's/const zhCN = //; s/;$//' | sed -e ':a' -e 'N' -e '$!ba' -e 's/,\n}/\n}/g')

        # 输出结果
        echo "$json_content"
    else
        log_message "Warning: 文件 $default_file 不存在或无法读取"
        return 1
    fi
}
# 测试函数
# get_exists_translate_words

# 获取需要翻译词的文件
get_translate_files() {
    # 定义JSON字符串数组
    translate_words="[]"
    # 创建临时文件
    temp_file=$(mktemp)
    
    # 遍历需要翻译的目录
    for path in "${config_translate_path[@]}"; do
        for suffix in "${config_translate_suffix[@]}"; do
            # 查找所有符合条件的文件
            while IFS= read -r file; do
                # 检查是否在排除目录中
                skip=false
                for exclude in "${config_exclude_path[@]}"; do
                    if [[ "$file" == *"$exclude"* ]]; then
                        skip=true
                        break
                    fi
                done
                
                if [ "$skip" = true ] || [ ! -r "$file" ]; then
                    continue
                fi

                # 直接使用 perl 处理文件，同时完成提取和中文检查
                perl -C -ne '
                    while (/['"'"'"]([^'"'"'"]+)['"'"'"]\.tr/g) {
                        $str = $1;
                        if ($str =~ /[\x{4e00}-\x{9fff}]/) {
                            print "$str\n";
                        }
                    }
                ' "$file" >> "$temp_file"
                
            done < <(find "$path" -type f -name "*.$suffix")
        done
    done

    # 获取已存在的翻译词
    exists_words_json=$(get_exists_translate_words)
    
    # 如果临时文件不为空，读取并去重
    if [ -s "$temp_file" ]; then
        while IFS= read -r word; do
            if [ -n "$word" ]; then
                # 判断该单词是否已存在
                if ! echo "$exists_words_json" | jq -e --arg key "$word" 'has($key)' >/dev/null; then
                    translate_words=$(echo "$translate_words" | jq --arg line "$word" '. + [$line]')
                fi
            fi
        done < <(sort -u "$temp_file")
    fi

    # 删除临时文件
    rm -f "$temp_file"
    
    # 返回翻译词数组
    echo "${translate_words}"
}

# 测试函数
test_get_translate_files() {
    log_message "Testing get_translate_files..."
    # 调用函数获取翻译词
    result=$(get_translate_files)
    # 输出结果
    echo "翻译词: $result"
}
# 运行测试
# test_get_translate_files

# 谷歌翻译
google_translate() {
    local text="$1" # 第一个参数为需要翻译的文本
    local to_lang="${2:-en}" # 第二个参数为目标语言，默认为 en
    local form_lang="${3:-$config_default_lang}" # 第三个参数为源语言，默认为 zh

    # URL encode the text
    encoded_text=$(perl -MURI::Escape -e 'print uri_escape($ARGV[0]);' "$text")
    
    # 构建完整的 URL
    url="${config_google_url}&q=${encoded_text}&hl=${form_lang}&tl=${to_lang}"
    
    # 发送 GET 请求并检查响应
    response=$(curl -s -X GET "$url")
    
    # 检查响应是否为空
    if [ -z "$response" ]; then
        echo "Error: No response from Google Translate API"
        return 1
    fi
    
    # 检查响应是否是有效的 JSON
    if ! echo "$response" | jq -e . >/dev/null 2>&1; then
        echo "Error: Invalid JSON response"
        return 1
    fi
    
    # 尝试提取翻译结果
    translated_text=$(echo "$response" | jq -r '.[0][0][0]' 2>/dev/null)
    
    # 检查翻译结果是否为空
    if [ -z "$translated_text" ] || [ "$translated_text" = "null" ]; then
        echo "Error: Could not extract translation"
        return 1
    fi

    # 输出翻译结果
    echo "$translated_text"
}

# 测试函数
test_google_translate() {
    local result
    
    # 测试中文到英文
    log_message "Testing Chinese to English translation..."
    result=$(google_translate "你好" "en")
    echo "中文 '你好' 翻译为英文: $result"
    
    # 测试英文到中文
    log_message "Testing English to Chinese translation..."
    result=$(google_translate "Hello" "zh-CN")
    echo "英文 'Hello' 翻译为中文: $result"
}
# 运行测试
# test_google_translate

# 自定义翻译
custom_translate() {
    local words="$1"  # 通过间接引用获取数组
    local form_lang="${2:-$config_default_lang}" # 第二个参数为源语言，默认为 zh

    # 检查 words 是否为空
    if [ -z "$words" ] || [ "$words" = "[]" ]; then
        log_message "Error: words 为空或无效"
        return 0
    fi

    # 验证 JSON 格式
    if ! echo "$words" | jq empty 2>/dev/null; then
        log_message "Error: words 不是有效的 JSON"
        return 0
    fi
    
    # 使用 jq 一次性构建 JSON 数据，避免循环中的延迟
    json_data=$(echo "$words" | jq -c --arg lang "$form_lang" '
        . | to_entries | map({
            lang: $lang,
            content: .value
        })
    ')

    # 打印请求数据用于调试
    # echo "发送的数据: $json_data" >&2

    # 发送 POST 请求
    response=$(curl -sS --location "$config_custom_url" \
        --header 'Content-Type: application/json' \
        --data "{\"data\": $json_data}" \
        2>&1)

    # 检查响应是否为空
    if [ -z "$response" ]; then
        echo "Error: No response from translation API" >&2
        return 1
    fi

    # 调试输出原始响应
    # echo "原始响应: $response" >&2

    # 检查响应是否是有效的 JSON
    if ! echo "$response" | jq -e . >/dev/null 2>&1; then
        echo "Error: Invalid JSON response: $response" >&2
        return 1
    fi

    echo "$response" | jq -r '.data'
}

# 测试函数
test_custom_translate() {
    log_message "Testing custom translation..."
    # 创建测试数组
    local test_words='["你好","嗨","早上好"]'
    # 调用翻译函数，传入数组名和源语言
    result=$(custom_translate "$test_words" "zh")
    echo "翻译结果:"
    echo "$result"
}
# 运行测试
# test_custom_translate

# 写入翻译内容到文件
write_translate_file() {
    local lang="$1"          # 语言代码，如 en_us
    local content="$2"       # 翻译内容 JSON 字符串
    local target_file="${config_target_path}/${lang}.${config_target_suffix}"

    # 检查参数
    if [ -z "$lang" ] || [ -z "$content" ]; then
        log_message "Error: 语言代码和内容不能为空"
        return 1
    fi

    # 验证输入的 JSON 格式
    if ! echo "$content" | jq empty 2>/dev/null; then
        log_message "Error: 输入的 JSON 格式无效"
        return 1
    fi

    # 转换语言代码为大写，如 en_us -> enUS
    local lang_camel=$(echo "$lang" | awk -F'_' '{printf "%s%s", $1, toupper(substr($2,1,2)) substr($2,3)}')

    # 如果文件不存在，创建文件
    if [ ! -d "$(dirname "$target_file")" ]; then
        mkdir -p "$(dirname "$target_file")"
        if [ $? -ne 0 ]; then
            log_message "Error: 创建目录失败: $(dirname "$target_file")"
            return 1
        fi
    else
        # 如果存在获取文件内容
        local file_content=$(cat "$target_file")
        if [ -n "$file_content" ]; then
            local existing_json=$(echo "$file_content" | sed -n '/const '"$lang_camel"' = {/,/^};/p' | sed 's/const '"$lang_camel"' = //; s/;$//' | sed -e ':a' -e 'N' -e '$!ba' -e 's/,\n}/\n}/g')
            # 验证现有 JSON 格式
            if ! echo "$existing_json" | jq empty 2>/dev/null; then
                log_message "Warning: 现有 JSON 格式无效，忽略合并"
                existing_json="{}"
            fi
            # 合并 JSON
            content=$(echo "$existing_json" "$content" | jq -s '.[0] * .[1]')
        fi
    fi

    # 检查内容是否为空
    if [ -z "$content" ]; then
        log_message "Error: 内容不能为空"
        return 1
    fi
    
    # 创建临时文件用于格式化 JSON
    local temp_file=$(mktemp)

    # 格式化 JSON
    if ! echo "$content" | jq '.' > "$temp_file"; then
        log_message "Error: JSON 格式化失败"
        rm -f "$temp_file"
        return 1
    fi

    # 写入 Dart 文件
    echo "const $lang_camel = $(cat "$temp_file");" > "$target_file"
    if [ $? -ne 0 ]; then
        log_message "Error: 写入文件失败: $target_file"
        rm -f "$temp_file"
        return 1
    fi

    # 删除临时文件
    rm -f "$temp_file"
    # log_message "成功写入翻译文件: $target_file"
}

# 测试函数
test_write_translate_file() {
    log_message "测试写入翻译文件..."
    
    # 测试数据
    local test_json='{
        "你好": "Hello",
        "早上好": "Good morning",
        "晚安": "Good night"
    }'

    # 测试写入英文翻译
    write_translate_file "en_us" "$test_json"
}
# 运行测试
# test_write_translate_file

# 主函数
main() {
    local input_string="$1"
    local translate_words="[]"
    # 判断
    if [[ -n "$input_string" ]]; then
        log_message "正在翻译的词语是：$1..."
        translate_words="[\"$input_string\"]"
    else
        log_message "正在获需要翻译的词..."
        # 获取需要翻译的文件
        translate_words=$(get_translate_files)
    fi
    # 如果没有需要翻译的词，退出
    if [ -z "$translate_words" ] || [ "$translate_words" = "[]" ]; then
        log_message "没有需要翻译的词"
        return 0
    fi
    if ! echo "$translate_words" | jq empty 2>/dev/null; then
        log_message "Error: translate_words 不是有效的 JSON"
        return 0
    fi
    # 获取数组长度
    length=$(echo "$translate_words" | jq '. | length')

    # 获取语言列表
    language_list=($(target_path_files_name))
    
    # 打印翻译平台信息
    log_message "正在使用的翻译平台是：${config_translate_platform}"
    echo "$translate_words" | jq -c '. | to_entries[]' | while read -r entry; do
        # 提取索引和值
        i=$(echo "$entry" | jq -r '.key')
        word=$(echo "$entry" | jq -r '.value')
        # 显示进度
        show_progress $((i + 1)) ${length}

        # 自定义翻译
        if [ "$config_translate_platform" = "custom" ]; then
            # 获取当前批次的翻译词
            batch="[]"
            batch=$(echo "$batch" | jq --arg line "$word" '. + [$line]')

            # 调用自定义翻译函数
            response=$(custom_translate "$batch" "zh")

            # 检查翻译结果是否为空
            if [ -z "$response" ] || [ "$response" = "[]" ]; then
                log_message "Error: response 为空或无效"
                break
            fi

            # 验证 JSON 格式
            if ! echo "$response" | jq empty 2>/dev/null; then
                log_message "Error: response 不是有效的 JSON"
                break
            fi

            # 循环处理 response 数据
            echo "$response" | jq -c '.[]?' | while read -r item; do
                for lang in "${language_list[@]}"; do
                    # 转化lang值
                    if [ "$lang" = "$config_default_lang" ]; then
                        value="$word"
                    else
                        if [ "$lang" = "zh_tw" ]; then
                            # 如果lang等于zh_tw，则重置为zh-TW
                            key="zh-TW"
                        else
                            # 将lang字符串通过下划线分割只要下划线的前面部分
                            key=$(echo "$lang" | awk -F'_' '{print $1}')
                        fi
                        value=$(echo "$item" | jq -r ".\"$key\"")
                    fi
                    # 写入翻译文件
                    write_translate_file "$lang" "{\"$word\": \"$value\"}"
                done
            done
        else
            # 谷歌翻译
            for lang in "${language_list[@]}"; do
                # 如果是默认语言就不用翻译
                if [ "$lang" = "$config_default_lang" ]; then
                    # 写入翻译文件
                    write_translate_file "$lang" "{\"$word\": \"$word\"}"
                else
                    # 调用谷歌翻译函数
                    response=$(google_translate "$word" "$lang")
                    # 检查翻译结果是否为空
                    if [ -z "$response" ]; then
                        log_message "Error: 谷歌翻译失败"
                        break
                    fi
                    # 写入翻译文件
                    write_translate_file "$lang" "{\"$word\": \"$response\"}"
                fi
            done
        fi

        # 测试，i 大于 1 时跳出循环
        # if [ $i -gt 1 ]; then
        #     break
        # fi
    done

    # 翻译完成
    log_message "翻译完成"
}

# 运行主函数
main $1