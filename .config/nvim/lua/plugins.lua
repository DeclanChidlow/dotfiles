vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'uga-rosa/ccc.nvim'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'lewis6991/gitsigns.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'preservim/vim-pencil'
  use 'preservim/vim-wordy'
  use 'srcery-colors/srcery-vim'
end)
