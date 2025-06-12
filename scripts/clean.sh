#!/bin/bash

# 查找并删除当前目录下 packages 和 apps 一级目录中的 pubspec_overrides.yaml 文件
find ./packages ./apps -maxdepth 2 -type f -name "pubspec_overrides.yaml" -exec rm -v {} \;

echo "已删除当前目录下 packages 和 apps 一级目录中的所有 pubspec_overrides.yaml 文件"

# 在 packages 和 apps 的一级目录下执行 flutter clean
for dir in ./packages/* ./apps/*; do
  if [ -d "$dir" ]; then
    echo "正在清理 $dir"
    (cd "$dir" && flutter clean)
  fi
done

echo "所有相关目录的 flutter clean 已完成"

# 在当前目录执行 melos clean 和 melos bs
# echo "正在执行 melos clean..."
# melos clean
echo "正在执行 melos bs..."
melos bs
echo "所有清理和重建操作已完成"

# 想清理的时候执行以下命令
# sh ./scripts/clean.sh