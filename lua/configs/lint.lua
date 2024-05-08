require("lint").linters_by_ft = {
  markdown = { "markdownlint" },
  yaml = { "yamllint" },
  python = {"flake8"},
  cmake = { "cmakelint" },
  bash = { "shellcheck" },
  go = { "golangci-lint" },
  java = { "checkstyle" },
  javascript = { "eslint_d" },
  json = { "jsonlint" },
  lua = { "luacheck" },


}

vim.api.nvim_create_autocmd({ "BufEnter", "InsertLeave", "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
