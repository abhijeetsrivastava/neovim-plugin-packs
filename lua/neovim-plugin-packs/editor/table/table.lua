return {
  { "godlygeek/tabular" },

  {
    "Wansmer/treesj",
    keys = {
      {
        "<space>cc",
        function()
          require("treesj").toggle()
        end,
        desc = "Toggle tree-sitter join",
      },
    },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup({--[[ your config ]]
      })
    end,
  },

  -- tidy
  {
    "mcauley-penney/tidy.nvim",
    event = "VeryLazy",
    config = {
      filetype_exclude = { "diff" },
    },
  },
}
