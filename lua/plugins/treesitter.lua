return {
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-treesitter").setup({
        ensure_installed = {
          "c",
          "cpp",
          "lua",
          "typescript",
          "tsx",
          "dockerfile",
          "yaml",
        },
        highlight = { enable = true },
        indent = { enable = false },
      })
    end,
    build = ":TSUpdate",
  },
  {
    "windwp/nvim-ts-autotag",
    config = function(_, opts)
      require("nvim-ts-autotag").setup(opts)
    end,
  },
}
