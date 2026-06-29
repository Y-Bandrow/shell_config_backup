#!/bin/bash

TARGET_DIR="./update_fold"

if [ -d "$TARGET_DIR" ]; then
    # 如果文件夹存在，清空其内部所有文件和子文件夹，但保留该文件夹本身
    # -mindepth 1 确保不会匹配到 TARGET_DIR 本身
    find "$TARGET_DIR" -mindepth 1 -delete
    echo "文件夹 '$TARGET_DIR' 已清空。"
else
    # 如果文件夹不存在，直接创建
    mkdir -p "$TARGET_DIR"
    echo "文件夹 '$TARGET_DIR' 创建成功。"
fi

cd $TARGET_DIR

cp $HOME/.zshrc .
cp $HOME/.bashrc .
cp $HOME/.vimrc .
cp $HOME/.tmux.conf .

mkdir -p ./clang_format/
cp $HOME/clang_format/.clang-format ./clang_format/

mkdir -p ./.config/kitty/
cp $HOME/.config/kitty/kitty.conf ./.config/kitty/
cp -r $HOME/.config/nvim/ ./.config/
cp -r $HOME/.config/fcitx/ ./.config/
cp -r $HOME/.config/fcitx5/ ./.config/
