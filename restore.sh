#!/bin/bash

./backup.sh

TARGET_DIR="./update_fold"
cd $TARGET_DIR

cp .zshrc $HOME/.zshrc
cp .bashrc $HOME/.bashrc
cp .vimrc $HOME/.vimrc
cp .tmux.conf $HOME/.tmux.conf

mkdir -p $HOME/clang_format/
cp ./clang_format/.clang-format $HOME/clang_format/

mkdir -p $HOME/.config/kitty/
cp -r ./.config/ $HOME/
#cp ./.config/kitty/kitty.conf $HOME/.config/kitty/
#cp -r ./.config/nvim/ $HOME/.config/
#cp -r ./.config/fcitx/ $HOME/.config/
#cp -r ./.config/fcitx5/ $HOME/.config/
