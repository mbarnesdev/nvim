return {
  "stevearc/oil.nvim",
  config = function()
    local oil = require "oil"

    oil.setup {
      default_file_explorer = true,
      columns = {
        "icon",
      },
      skip_confirm_for_simple_edits = true,
    }
  end,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {},
}
