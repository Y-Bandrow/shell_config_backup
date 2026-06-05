return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- 显式指定：C 和 C++ 语言一律使用 clang-format
        c = { "clang-format" },
        cpp = { "clang-format" },
      },
    },
  },
}
