-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- 将所有缩进宽度统一设置为 4 个空格
vim.opt.tabstop = 4 -- 1个Tab等于4个空格的宽度
vim.opt.shiftwidth = 4 -- 自动缩进时使用的空格数
vim.opt.softtabstop = 4 -- 按退格键时一次删掉4个空格
vim.opt.expandtab = true -- 把Tab自动转换成空格（推荐，能保证在所有编辑器里长得一样）
