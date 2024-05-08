return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "configs.lint"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
      current_line_blame_opts = {
        virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "luacheck",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "clangd",
        "clang-format",
        "pyright",
        "flake8",
        "black",
        "cmake-language-server",
        "cmakelint",
        "yamllint",
        "bash-language-server",
        "shellcheck",
        "beautysh",
        "gopls",
        "golangci-lint",
        "gofumpt",
        "buf-language-server",
        "buf",
        "yamlfmt",
        "jdtls",
        "checkstyle",
        "google-java-format",
        "typescript-language-server",
        "eslint_d",
        "jsonlint",
        "texlab",
        "latexindent",
        "bibtex-tidy",
        "vale",
        "marksman",
        "markdownlint",
        "mdformat",
        "rust-analyzer",
        "lemminx",
        "xmlformatter"

      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "cmake",
        "cpp",
        "yaml",
        "fish",
        "bash",
        "java",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "go",
        "javascript",
        "json",
        "latex",
        "markdown",
        "markdown_inline",
        "proto",
        "qmldir",
        "qmljs",
        "rust",
        "ssh_config",
        "tmux",
        "typescript",
        "xml",
      },
    },
  },
}
