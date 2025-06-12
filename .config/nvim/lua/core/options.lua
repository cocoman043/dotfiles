vim.wo.number = true -- line numbers
vim.o.relativenumber = true

vim.o.clipboard = 'unnamedplus'

vim.o.wrap = false

vim.o.linebreak = true

vim.o.mouse = 'a'

vim.o.autoindent = true
vim.o.smartindent = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

vim.o.scrolloff = 4
vim.o.sidescrolloff = 8

vim.o.cursorline = false

vim.o.splitbelow = true
vim.o.splitright = true

vim.o.hlsearch = true

vim.o.showmode = true

vim.opt.termguicolors = true

vim.o.whichwrap = 'bs<>[]hl'

vim.o.numberwidth = 4

vim.o.swapfile = false

vim.o.showtabline = 2

vim.o.backspace = 'indent,eol,start'

vim.o.pumheight = 10

vim.o.conceallevel = 0

vim.wo.signcolumn = 'yes'

vim.o.fileencoding = 'utf-8'

vim.o.cmdheight = 1

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "typst" },
  callback = function()
    vim.opt_local.wrap = true -- Enable wrap
    vim.opt_local.linebreak = true -- Wrap at word boundaries, not mid-word
    vim.opt_local.breakindent = true -- Keep indentation on wrapped lines
    vim.opt_local.showbreak = "↪ " -- (Optional) Show a marker for wrapped lines
    vim.keymap.set('n', 'j', 'gj', { buffer = true }) -- Move down by visual line
    vim.keymap.set('n', 'k', 'gk', { buffer = true }) -- Move up by visual line
  end,
})

vim.api.nvim_create_autocmd({"BufReadPost","FileReadPost"}, {
  pattern = { "*" },
  callback = function()
    vim.api.nvim_command("normal zR")
  end,
})


vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    if vim.opt.foldmethod:get() == "expr" then
      vim.schedule(function()
        vim.opt.foldmethod = "expr"
      end)
    end
  end,
})

vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
