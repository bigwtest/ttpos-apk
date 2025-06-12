#!/bin/bash

# 获取项目根目录
ROOT_DIR=$(pwd)

# 比较和更新环境变量文件的函数
compare_and_update_env_files() {
    local env=$1
    local app_dir=$2
    local env_file="${app_dir}/.env.${env}"
    local env_local_file="${app_dir}/.env.${env}.local"

    # 检查两个文件是否存在
    if [ ! -f "$env_file" ]; then
        echo "警告: ${app_dir} 没有 .env.${env} 环境变量文件"
        return
    fi

    if [ ! -f "$env_local_file" ]; then
        echo "警告: ${app_dir} 没有 .env.${env}.local 环境变量文件"
        return
    fi

    # 创建临时文件
    local temp_file=$(mktemp)
    
    # 获取 .env 文件中的所有 key（排除注释和空行）
    local env_keys=$(grep -v '^#' "$env_file" | grep -v '^$' | grep '=' | cut -d'=' -f1)
    
    # 获取 .env.local 文件中的所有 key（排除注释和空行）
    local local_keys=$(grep -v '^#' "$env_local_file" | grep -v '^$' | grep '=' | cut -d'=' -f1)
    
    # 检查是否有缺失的 key
    local missing_keys=0
    for key in $env_keys; do
        if ! grep -q "^${key}=" "$env_local_file"; then
            # 从 .env 文件中获取完整的行（保留原始格式）
            grep "^${key}=" "$env_file" >> "$temp_file"
            missing_keys=$((missing_keys + 1))
            echo "添加缺失的 key: $key"
        fi
    done

    # 如果有缺失的 key，则更新 .env.local 文件
    if [ $missing_keys -gt 0 ]; then
        echo "在 ${app_dir} 中添加了 $missing_keys 个缺失的 key 到 .env.${env}.local"
        # 追加缺失的 key 到原文件末尾
        cat "$temp_file" >> "$env_local_file"
    else
        echo "${app_dir} 的 .env.${env}.local 文件已是最新"
    fi
    
    # 清理临时文件
    rm -f "$temp_file"
}

# 复制环境变量文件的函数
copy_env_file() {
    local env=$1
    local app_dir=$2
    local env_file="${app_dir}/.env.${env}"
    local env_local_file="${app_dir}/.env.${env}.local"

    # 检查 .env.{env}.local 文件是否存在
    if [ ! -f "$env_local_file" ]; then
        echo "警告: ${app_dir} 没有 .env.${env}.local 环境变量文件"

        # 检查 .env.{env} 文件是否存在
        if [ ! -f "$env_file" ]; then
            echo "警告: ${app_dir} 没有 .env.${env} 环境变量文件"
            return
        fi

        # 复制文件
        cp "$env_file" "$env_local_file"
        echo "${app_dir} 已复制 .env.${env} 文件到 .env.${env}.local 文件"
    else
        # 如果本地环境文件存在，则比较并更新
        compare_and_update_env_files "$env" "$app_dir"
    fi
}

# 主函数
main() {
    # 遍历 apps 目录
    for app_dir in "$ROOT_DIR/apps"/*; do
        # 检查是否为目录
        if [ -d "$app_dir" ]; then
            # 为每个环境复制文件
            copy_env_file "development" "$app_dir"
            copy_env_file "test" "$app_dir"
            copy_env_file "production" "$app_dir"
        fi
    done
}

# 执行主函数
main 