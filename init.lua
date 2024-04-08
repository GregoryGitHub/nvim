local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
	Plug('AlexvZyl/nordic.nvim', { ['branch'] = 'main' })
	Plug('vim-airline/vim-airline')
	Plug('vim-airline/vim-airline-themes')
	Plug('ryanoasis/vim-devicons')
	Plug('preservim/nerdtree')
	Plug('mattkubej/jest.nvim')
	Plug('neovim/nvim-lspconfig')
	Plug('hrsh7th/cmp-nvim-lsp')
	Plug('hrsh7th/cmp-buffer')
	Plug('hrsh7th/cmp-path')
	Plug('hrsh7th/cmp-cmdline')
	Plug('hrsh7th/nvim-cmp')
	Plug('onsails/lspkind.nvim')
vim.call('plug#end')



vim.cmd([[
set number
set relativenumber
set smarttab
set nowrap
set autochdir
set ignorecase
set smartcase
colorscheme nordic
]])

vim.cmd('source ~/.config/nvim/config/airline.vim')
vim.cmd('source  ~/.config/nvim/config/maps.vim')


-- Configurando o cmp ( Plugin de autocomplete )
require'cmp'.setup {
	sources = {
		{ name = 'nvim_lsp' }
	}
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require'lspconfig'.tsserver.setup {
	capabilities = capabilities
}
