return {
  -- project management
  {
    "theprimeagen/harpoon",
    keys = {
      {
        "<leader>pa",
        function() require("harpoon.mark").add_file() end,
        desc = "Add harpoon",
      },
      {
        "<leader>pl",
        function() require("harpoon.ui").toggle_quick_menu() end,
        desc = "Harpoon menu",
      },
      {
        "<C-a>",
        function() require("harpoon.ui").nav_file(1) end,
        desc = "Nav to file 1",
      },
      {
        "<C-s>",
        function() require("harpoon.ui").nav_file(2) end,
        desc = "Nav to file 2",
      },
    },
    config = function()
      require("harpoon").setup {
        global_settings = {
          mark_branch = true,
        },
      }
    end,
  },
  {
    "mbbill/undotree",
    keys = {
      { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Undo menu" },
    },
  },
  { "tpope/vim-fugitive" },
  { "lukas-reineke/indent-blankline.nvim" },
}
