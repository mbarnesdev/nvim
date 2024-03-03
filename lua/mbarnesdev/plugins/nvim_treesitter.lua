return {
  "nvim-treesitter/nvim-treesitter",
  build = {
    ":TSUpdate",
  },
  config = function()
    local configs = require "nvim-treesitter.configs"

    configs.setup {
      ensure_installed = {
        "lua",
        "php",
        "javascript",
        "jsdoc",
        "typescript",
        "bash",
        "astro",
        "yaml",
        "svelte",
        "regex",
        "markdown",
        "json",
        "html",
        "go",
        "dockerfile",
        "css",
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    }
  end,
}
