return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
 ██████╗ ██╗      ██████╗██████╗ ███████╗
██╔════╝ ██║     ██╔════╝██╔══██╗╚══███╔╝
██║  ███╗██║     ██║     ██████╔╝  ███╔╝ 
██║   ██║██║     ██║     ██╔══██╗ ███╔╝  
╚██████╔╝███████╗╚██████╗██║  ██║███████╗
 ╚═════╝ ╚══════╝ ╚═════╝╚═╝  ╚═╝╚══════╝
      ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      routes = {
        {
          filter = {
            event = "msg_show",
            any = {
              { find = "%d+L, %d+B" },
              { find = "; after #%d+" },
              { find = "; before #%d+" },
            },
          },
          view = "mini",
        },
        {
          filter = {
            event = "notify",
            find = "No information available",
          },
          opts = { skip = true },
        },
      },
      views = {
        mini = {
          win_options = {
            winblend = 0,
          },
        },
        hover = {
          win_options = {
            winblend = 10,
          },
        },
      },
      presets = {
        lsp_doc_border = true,
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },
}
