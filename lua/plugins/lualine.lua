return {
  "nvim-lualine/lualine.nvim",
  enabled = true,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  init = function()
    vim.opt.showmode = false
  end,
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = "catppuccin",
      },
      extensions = { "neo-tree" },
    })
  end,
}
