#!/bin/bash

# 使用方法
# bash ./scripts/update_version.sh

# 当前地址
current_dir=$(pwd)

# 更新版本号函数
update_version() {
    local file="$1"
    local current_version="$2"
    local new_version="$3"
    
    # 更新pubspec.yaml文件中的版本号
    sed -i '' "s/version: $current_version/version: $new_version/" "$file"
    
    echo "Updated $file from version $current_version to $new_version"

    # 更新docker-compose.yml中的版本号
    docker_compose_file="$current_dir/docker-compose.yml"
    if [[ -f "$docker_compose_file" ]]; then
        # 获取文件所在目录
        dir=$(dirname "$file")
        # 如果目录名包含mobile，则更新docker-compose.yml中的mobile版本号
        if [[ "$dir" == *"/mobile" ]]; then
            # 获取docker-compose.yml内容，正则匹配 /mobile/$current_version 修改为最新版本
            sed -i '' "s|/mobile/$current_version|/mobile/$new_version|g" "$docker_compose_file"
            # 输出更新信息
            echo "Updated mobile version in docker-compose.yml to $new_version"
        fi
        # 如果目录名包含menu，则更新docker-compose.yml中的menu版本号
        if [[ "$dir" == *"/menu" ]]; then
            # 获取docker-compose.yml内容，正则匹配 /menu/$current_version 修改为最新版本
            sed -i '' "s|/menu/$current_version|/menu/$new_version|g" "$docker_compose_file"
            # 输出更新信息
            echo "Updated menu version in docker-compose.yml to $new_version"
        fi
    else
        echo "Docker compose file not found: $docker_compose_file"
    fi
}

main() {
    # 获取传入的新版本号
    local new_version="$1"
   
    # 获取apps目录下的所有文件夹的pubspec.yaml文件
    find ./apps -type f -name "pubspec.yaml" | while read -r file; do
        # 获取当前版本号
        current_version=$(grep 'version:' "$file" | awk '{print $2}')
        # 如果没有传入新版本号，则递增次版本号
        if [ -z "$new_version" ]; then
            # 提取主版本号和次版本号
            major=$(echo "$current_version" | cut -d'.' -f1)
            minor=$(echo "$current_version" | cut -d'.' -f2)
            patch=$(echo "$current_version" | cut -d'.' -f3)
            
            # 递增次版本号
            new_patch=$((patch + 1))
            
            # 构建新的版本号
            new_version="$major.$minor.$new_patch"
        fi
        # 输出当前版本号和新版本号
        update_version "$file" "$current_version" "$new_version"
    done
}

main "$1"