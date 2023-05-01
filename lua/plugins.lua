local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  
  use 'sheerun/vim-polyglot'
  use 'bluz71/vim-nightfly-colors'

--  use 'navarasu/onedark.nvim'

  --LSP autocomplete
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- Telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  use 'xiyaowong/nvim-transparent' -- Transparent background
  use { "nvim-telescope/telescope-file-browser.nvim" } -- Telescope file browser
  use 'mattn/emmet-vim'
  -- Syntax parser
  use("nvim-treesitter/nvim-treesitter")
  use("windwp/nvim-autopairs")
  use("norcalli/nvim-colorizer.lua")
  use("akinsho/bufferline.nvim")
  use("lewis6991/gitsigns.nvim")
  use {
    "startup-nvim/startup.nvim",
    requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    config = function()
    require"startup".setup()
  end
}
end)

