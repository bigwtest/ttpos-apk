#!/bin/bash

# 获取当前路径
CURRENT_PATH=$(pwd)

# env 文件名
ENV_FILE_NAME=".env.production.local"

# 显示环境变量
show_env_vars() {
    local PACKAGE=$1
    # 获取.env.production.local文件
    ENV_FILE="$CURRENT_PATH/apps/$PACKAGE/$ENV_FILE_NAME"

    echo "当前环境变量配置:"
    echo "----------------------------------------"
    if [ -f $ENV_FILE ]; then
        while IFS='=' read -r key value; do
            # 跳过空行和注释
            [[ -z "$key" || "$key" =~ ^# ]] && continue
            # 显示变量名和值
            printf "%-20s = %s\n" "$key" "$value"
        done < $ENV_FILE
    else
        echo "未找到 $ENV_FILE 文件"
    fi
    echo "----------------------------------------"
}

# 定义构建函数
build_package() {
    local PACKAGE=$1
    echo "正在构建 $PACKAGE..."
    melos exec --scope="$PACKAGE" -- "flutter build apk --dart-define-from-file=$ENV_FILE_NAME &&
    mkdir -p ../../releases/MELOS_PACKAGE_NAME &&
    cp build/app/outputs/flutter-apk/app-release.apk ../../releases/MELOS_PACKAGE_NAME/MELOS_PACKAGE_VERSION.apk"
    local BUILD_STATUS=$?
    if [ $BUILD_STATUS -ne 0 ]; then
        echo "$PACKAGE 构建失败，终止后续构建。"
        exit 1
    fi
}

param1=$1
if [ -z "$param1" ]; then
    # 参数为空时，构建预设的所有包
    echo "打包所有端安卓安装包"
    PACKAGES=("tablet" "pos" "assistant" "kds")
    for PACKAGE in "${PACKAGES[@]}"; do
        show_env_vars "$PACKAGE"
        build_package "$PACKAGE"
    done
else
    # 参数不为空时，构建传入的包
    echo "在\"$param1\"包中执行flutter build apk命令"
    show_env_vars "$param1"
    build_package "$param1"
fi

