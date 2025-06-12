#!/bin/bash


# 获取项目根目录
ROOT_DIR=$(pwd)

# 生产环境
production_env_api_url="https://api.ttpos.com/api/v1"
production_env_socket_url="wss://api.ttpos.com/ws"

# 本地环境
local_env_api_url="http://192.168.100.25:8888/api/v1"
local_env_socket_url="ws://192.168.100.25:8888/ws"

# 测试环境
staging_env_api_url="https://ttpos-test1.ttpos.com/api/v1"
staging_env_socket_url="wss://ttpos-test1.ttpos.com/ws"

PACKAGES=("tablet" "pos" "assistant" "kds" "mobile" "menu")

# 检测操作系统类型
OS_TYPE="unknown"
if [[ "$OSTYPE" == "darwin"* ]]; then
  OS_TYPE="macos"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  OS_TYPE="linux"
elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" || "$OSTYPE" == "cygwin" ]]; then
  OS_TYPE="windows"
fi

set_env() {
  local PACKAGE=$1
  local API_URL=$2
  local SOCKET_URL=$3
  local FILE_NAME=$4

  if [ "$FILE_NAME" = "prod" ]; then
    FILE_NAME=".env.production.local"
  elif [ "$FILE_NAME" = "test" ]; then
    FILE_NAME=".env.test.local"
  elif [ "$FILE_NAME" = "dev" ]; then
    FILE_NAME=".env.development.local"
  else 
    FILE_NAME=".env.production.local"
  fi

  echo "设置 $PACKAGE 环境为 $API_URL $SOCKET_URL"
  for app_dir in "$ROOT_DIR/apps"/*; do
    if [ -d "$app_dir" ]; then
      # 检查是否存在环境文件
      if [ -f "$app_dir/$FILE_NAME" ]; then
        # 根据操作系统类型使用不同的 sed 命令
        if [ "$OS_TYPE" = "macos" ]; then
          sed -i '' "s|API_BASE_URL=.*|API_BASE_URL=$API_URL|" "$app_dir/$FILE_NAME"
          sed -i '' "s|WS_BASE_URL=.*|WS_BASE_URL=$SOCKET_URL|" "$app_dir/$FILE_NAME"
        elif [ "$OS_TYPE" = "windows" ]; then
          # Windows Git Bash 兼容写法
          sed -i "s|API_BASE_URL=.*|API_BASE_URL=$API_URL|" "$app_dir/$FILE_NAME"
          sed -i "s|WS_BASE_URL=.*|WS_BASE_URL=$SOCKET_URL|" "$app_dir/$FILE_NAME"
        else
          # Linux 写法
          sed -i "s|API_BASE_URL=.*|API_BASE_URL=$API_URL|" "$app_dir/$FILE_NAME"
          sed -i "s|WS_BASE_URL=.*|WS_BASE_URL=$SOCKET_URL|" "$app_dir/$FILE_NAME"
        fi
      fi
    fi
  done
}

param1=$1
param2=$2
if [ -z "$param1" ]; then
  echo "切换到生产环境"
  for PACKAGE in "${PACKAGES[@]}"; do
    set_env $PACKAGE $production_env_api_url $production_env_socket_url $param2
  done
elif [ "$param1" = "prod" ]; then
  echo "切换到生产环境"
  for PACKAGE in "${PACKAGES[@]}"; do
    set_env $PACKAGE $production_env_api_url $production_env_socket_url $param2
  done
elif [ "$param1" = "test" ]; then
  echo "切换到测试环境" 
  for PACKAGE in "${PACKAGES[@]}"; do
    set_env $PACKAGE $staging_env_api_url $staging_env_socket_url $param2
  done
elif [ "$param1" = "dev" ]; then
  echo "切换到本地环境"
  for PACKAGE in "${PACKAGES[@]}"; do
    set_env $PACKAGE $local_env_api_url $local_env_socket_url $param2
  done
else
  echo "无效的环境参数,请输入: prod|test|dev"
  exit 1
fi