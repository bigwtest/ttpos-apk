#!/bin/bash

check_create_dmg() {
  if ! command -v create-dmg &> /dev/null; then
    echo "未找到 create-dmg 命令，正在通过 Homebrew 安装..."
    brew install create-dmg
    if [ $? -ne 0 ]; then
      echo "安装 create-dmg 失败，请检查 Homebrew 是否正常工作"
      exit 1
    fi
    echo "create-dmg 安装成功"
  fi
}

# 在执行主要构建逻辑之前，先检查必要的工具
check_create_dmg

build_package(){
  local PACKAGE=$1
  echo "正在打包 $PACKAGE..."
  if [ "$PACKAGE" = "pos" ];then
    melos exec --scope="$PACKAGE" -- "cd ../../releases/MELOS_PACKAGE_NAME/MELOS_PACKAGE_VERSION &&
          create-dmg \
            --volname \"TTPOS\" \
            --volicon \"TTPOS.app/Contents/Resources/AppIcon.icns\" \
            --window-pos 200 120 \
            --window-size 800 400 \
            --icon-size 100 \
            --icon \"TTPOS.app\" 200 190 \
            --hide-extension \"TTPOS.app\" \
            --app-drop-link 600 185 \
            \"TTPOS (MELOS_PACKAGE_VERSION).dmg\" \
            \"TTPOS.app\"
          "
  elif [ "$PACKAGE" = "assistant" ];then
    melos exec --scope="$PACKAGE" -- "cd ../../releases/MELOS_PACKAGE_NAME/MELOS_PACKAGE_VERSION &&
          create-dmg \
            --volname \"TTPOS Go\" \
            --volicon \"TTPOS Go.app/Contents/Resources/AppIcon.icns\" \
            --window-pos 200 120 \
            --window-size 800 400 \
            --icon-size 100 \
            --icon \"TTPOS Go.app\" 200 190 \
            --hide-extension \"TTPOS Go.app\" \
            --app-drop-link 600 185 \
            \"TTPOS Go (MELOS_PACKAGE_VERSION).dmg\" \
            \"TTPOS Go.app\"
          "
  elif [ "$PACKAGE" = "kds" ];then
    melos exec --scope="$PACKAGE" -- "cd ../../releases/MELOS_PACKAGE_NAME/MELOS_PACKAGE_VERSION &&
          create-dmg \
            --volname \"TTPOS Kitchen\" \
            --volicon \"TTPOS Kitchen.app/Contents/Resources/AppIcon.icns\" \
            --window-pos 200 120 \
            --window-size 800 400 \
            --icon-size 100 \
            --icon \"TTPOS Kitchen.app\" 200 190 \
            --hide-extension \"TTPOS Kitchen.app\" \
            --app-drop-link 600 185 \
            \"TTPOS Kitchen (MELOS_PACKAGE_VERSION).dmg\" \
            \"TTPOS Kitchen.app\"
          "
  elif [ "$PACKAGE" = "tablet" ];then
    melos exec --scope="$PACKAGE" -- "cd ../../releases/MELOS_PACKAGE_NAME/MELOS_PACKAGE_VERSION &&
          create-dmg \
            --volname \"TTPOS Menu\" \
            --volicon \"TTPOS Menu.app/Contents/Resources/AppIcon.icns\" \
            --window-pos 200 120 \
            --window-size 800 400 \
            --icon-size 100 \
            --icon \"TTPOS Menu.app\" 200 190 \
            --hide-extension \"TTPOS Menu.app\" \
            --app-drop-link 600 185 \
            \"TTPOS Menu (MELOS_PACKAGE_VERSION).dmg\" \
            \"TTPOS Menu.app\"
          "
  fi  

  local BUILD_STATUS=$?
      if [ $BUILD_STATUS -ne 0 ]; then
          echo "$PACKAGE 构建失败，终止后续构建。"
          exit 1
      fi
}

param1=$1
if [ -z "$param1" ]; then
    # 参数为空时，构建预设的所有包
    echo "打包所有端 macOS dmg 安装包"
    PACKAGES=("tablet" "pos" "assistant" "kds")
    for PACKAGE in "${PACKAGES[@]}"; do
        build_package "$PACKAGE"
    done
else
    # 参数不为空时，构建传入的包
    echo "在\"$param1\"包中执行flutter build macos命令"
    build_package "$param1"
fi