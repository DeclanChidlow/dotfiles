-- Srcery colour scheme
return {
  {
    "srcery-colors/srcery-vim",
    lazy = false,
    priority = 1000,
    config = function()
		vim.opt.termguicolors = true
		vim.cmd([[colorscheme srcery]])
		vim.cmd([[highlight Normal ctermbg=none guibg=none]])
    end,
  },
}
