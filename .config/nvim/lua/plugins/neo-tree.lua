return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
    '3rd/image.nvim'
  },
  config = function()
    vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<CR>', { desc = 'Open [E]xplorer' })
  end
}
--
--
-- WANNA USE OIL???
-- return {
--   'stevearc/oil.nvim',
--   ---@module 'oil'
--   ---@type oil.SetupOpts
--   opts = {},
--   -- Optional dependencies
--   -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
--   dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
--   -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
--   lazy = false,
--   config = function()
--     require("oil").setup()
--     vim.keymap.set("n", "<leader>e", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
--   end
-- }
