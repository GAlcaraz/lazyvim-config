return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  opts = {
    -- add any opts here
    provider = "openai",
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
}
