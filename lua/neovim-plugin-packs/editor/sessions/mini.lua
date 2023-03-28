-- already present in lazy/lazy
-- mini.pairs, mini.surround, mini.comment, mini.ai
return {
  {
    "echasnovski/mini.sessions",
    version = "*",
    config = function()
      require("mini.sessions").setup({
        -- No need to copy this inside `setup()`. Will be used automatically.
        {
          -- Directory where global sessions are stored (use `''` to disable)
          directory = "~/.local/share/nvim/session", --<"session" subdir of user data directory from |stdpath()|>,
        },
      })
    end,
    keys = {
      { "<leader>pp", "<cmd> lua MiniSessions.select()<CR>", desc = "Session (L)ist" },
      { "<leader>pso", "[[:lua MiniSessions.read('')<Left><Left>", desc = "Open Session" },
      { "<leader>psw", "[[:lua MiniSessions.write('')<Left><Left>", desc = "Create Session" },
    },
    lazy = false,
  },
  {
    "echasnovski/mini.misc",
    version = "*",
    config = function()
      require("mini.misc").setup()
      -- restore cursor to last place when reopening a file
      require("mini.misc").setup_restore_cursor()
    end,
  },
}
