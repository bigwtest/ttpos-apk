#!/bin/bash

# 定义构建函数
build_package() {
    local PACKAGE=$1
    echo "正在构建 $PACKAGE..."
    melos exec --scope="$PACKAGE" -- "rm -rf ../../releases/MELOS_PACKAGE_NAME/MELOS_PACKAGE_VERSION &&
    flutter build web --release --web-resources-cdn --pwa-strategy=none --dart-define-from-file=.env.production.local &&
    mkdir -p ../../releases/MELOS_PACKAGE_NAME &&
    cp -r build/web ../../releases/MELOS_PACKAGE_NAME/MELOS_PACKAGE_VERSION"
    local BUILD_STATUS=$?
    if [ $BUILD_STATUS -ne 0 ]; then
        echo "$PACKAGE 构建失败，终止后续构建。"
        exit 1
    fi
}

param1=$1
if [ -z "$param1" ]; then
    # 参数为空时，构建预设的所有包
    echo "打包所有端web静态包"
    PACKAGES=("mobile" "menu")
    for PACKAGE in "${PACKAGES[@]}"; do
        build_package "$PACKAGE"
    done
else
    # 参数不为空时，构建传入的包
    echo "在\"$param1\"包中执行flutter build web命令"
    build_package "$param1"
fi

