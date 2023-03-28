return {
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup({
      window = {
        width = 90,
        options = {
          number = true,
          relativenumber = true,
        },
      },
    })
  end,
  keys = {
    { "<leader>uz", "<cmd>ZenMode<cr>", desc = "(Z)enMode Toggle" },
  },
}
