return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup {
      notify_on_error = false,
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
      -- formatters = {
      --   prettier = {
      --   }
      -- },
      formatters_by_ft = {
        lua = {
          "stylua",
        },
        javascript = {
          "prettierd",
        },
        typescript = {
          "prettierd",
        },
        html = {
          "prettierd",
        },
      },
    }
  end,
}
