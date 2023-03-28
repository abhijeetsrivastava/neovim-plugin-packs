return {
  -- customize telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-telescope/telescope-dap.nvim" },
      -- { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      -- { "nvim-telescope/telescope-project.nvim" },
      { "debugloop/telescope-undo.nvim" },
    },
    opts = {
      defaults = {
        path_display = {
          truncate = 3,
        },
        prompt_prefix = " ",
        selection_caret = " ",
        -- layout_strategy = "right",
        layout_config = {
          vertical = {
            preview_cutoff = 0.2,
            preview_height = 0.4,
          },
          height = 0.9,
          width = 0.9,
        },
        mappings = {
          i = {
            ["<C-j>"] = function(...) return require("telescope.actions").move_selection_next(...) end,
            ["<C-k>"] = function(...) return require("telescope.actions").move_selection_previous(...) end,
            ["<C-p>"] = function(...) return require("telescope.actions.layout").toggle_preview(...) end,
          },
          n = {
            ["j"] = function(...) return require("telescope.actions").move_selection_next(...) end,
            ["k"] = function(...) return require("telescope.actions").move_selection_previous(...) end,
            ["gg"] = function(...) return require("telescope.actions").move_to_top(...) end,
            ["G"] = function(...) return require("telescope.actions").move_to_bottom(...) end,
            ["<C-p>"] = function(...) return require("telescope.actions.layout").toggle_preview(...) end,
          },
        },
      },
      extensions = {
        project = {
          base_dirs = {
            "~/Projects",
          },
        },
        undo = {
          use_delta = true,
          side_by_side = true,
          layout_strategy = "vertical",
          layout_config = {
            preview_height = 0.4,
          },
        },
      },
    },
    keys = {
      {
        "<leader>fp",
        "<CMD>Telescope project display_type=full<CR>",
        desc = "Find project",
      },
    },
    config = function(_, opts)
      local telescope = require "telescope"
      telescope.setup(opts)
      telescope.load_extension "dap"
      -- telescope.load_extension("fzf")
      -- telescope.load_extension("project")
      telescope.load_extension "undo"
    end,
  },
  { "nvim-telescope/telescope-ui-select.nvim" },
  {
    "nvim-telescope/telescope-frecency.nvim",
    config = function() require("telescope").load_extension "frecency" end,
    dependencies = { "tami5/sqlite.lua" },
  },
}
