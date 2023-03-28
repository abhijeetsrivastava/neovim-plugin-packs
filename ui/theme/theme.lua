return {
  -- tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },

  -- catppuccin
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    config = function()
      require("neo-tree").setup({
        flavor = "mocha",
      })
    end,
  },

  -- gruvbox
  { "sainnhe/gruvbox-material" },

  { "shaunsingh/nord.nvim" },

  -- Configure LazyVim to load a theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
