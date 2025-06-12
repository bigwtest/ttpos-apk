#!/bin/bash

# 获取所有可用的模拟器列表
emulators_output=$(flutter emulators)

# 从输出中提取 Android 模拟器的 ID
# 使用更精确的 grep 和 awk 命令来提取 ID，只匹配 Android 模拟器
emulator_ids=$(echo "$emulators_output" | grep -i "tablet\|pixel\|android" | grep "•" | awk -F'•' '{gsub(/^[ \t]+|[ \t]+$/, "", $1); print $1}')

# 检查是否找到任何 Android 模拟器
if [ -z "$emulator_ids" ]; then
    echo "未找到任何 Android 模拟器"
    echo "请先创建一个 Android 模拟器"
    echo "可以使用命令: flutter emulators --create [--name xyz]"
    exit 1
fi

# 遍历并启动每个找到的模拟器
for emulator_id in $emulator_ids; do
    echo "正在启动模拟器: $emulator_id"
    flutter emulators --launch "$emulator_id" &
    
    # 等待几秒钟让模拟器有时间启动
    sleep 5
done
