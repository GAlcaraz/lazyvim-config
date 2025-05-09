return {
  -- "yetone/avante.nvim",
  -- event = "VeryLazy",
  -- version = "*",
  -- opts = {
  --   -- add any opts here
  --   provider = "claude",
  -- },
  -- dependencies = {
  --   "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
  --   "stevearc/dressing.nvim",
  --   "nvim-lua/plenary.nvim",
  --   "MunifTanjim/nui.nvim",
  -- },
  {
    "milanglacier/yarepl.nvim",
    event = "VeryLazy",
    config = function()
      require("yarepl").setup({
        metas = {
          aider = require("yarepl.extensions.aider").create_aider_meta(),
          bash = false,
          aichat = false,
          R = false,
          zsh = false,
          radian = false,
          python = false,
          ipython = false,
        },

        vim.keymap.set("n", "<leader>rs", "<Plug>(REPLStart-aider)", { desc = "Start REPL" }),
        vim.keymap.set("n", "<leader>rf", "<Plug>(REPLFocus)", { desc = "Focus REPL" }),
        vim.keymap.set("n", "<Leader>rh", "<Plug>(REPLHide-aider)", {
          desc = "Hide aider REPL",
        }),
        vim.keymap.set("v", "<Leader>ar", "<Plug>(REPLSendVisual-aider)", {
          desc = "Send visual region to aider",
        }),
        vim.keymap.set("n", "<Leader>arr", "<Plug>(REPLSendLine-aider)", {
          desc = "Send lines to aider",
        }),
        -- Other yarepl.nvim settings
        close_on_exit = false,
        scroll_to_bottom_after_sending = true,
        -- whether the REPL buffer should be a scratch buffer.
        -- scratch = true,
        -- the filetype of the REPL buffer created by `yarepl`
        ft = "REPL",
        -- How yarepl open the REPL window, can be a string or a lua function.
        -- See below example for how to configure this option
        wincmd = "belowright 15 split",
      })
    end,
  },
}
