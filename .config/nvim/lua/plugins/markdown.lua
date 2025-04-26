return {
  {
    "saghen/blink.cmp",
    opts = {
      enabled = function()
        return not vim.tbl_contains({ "markdown", "vimwiki" }, vim.bo.filetype)
      end,
    },
  },
  {
    "ribru17/blink-cmp-spell",
    dependencies = { "saghen/blink.cmp" },
  },
}
