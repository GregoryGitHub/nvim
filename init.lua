local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

	Plug('img-paste-devs/img-paste.vim')
	Plug('AlexvZyl/nordic.nvim', { ['branch'] = 'main' })
	Plug('vim-airline/vim-airline')
	Plug('vim-airline/vim-airline-themes')
	Plug('ryanoasis/vim-devicons')
	Plug('preservim/nerdtree')
	Plug('mattkubej/jest.nvim')
	Plug('voldikss/vim-floaterm')

vim.call('plug#end')



vim.cmd([[
	set number
	set relativenumber
	set smarttab
	set nowrap
	set autochdir
	colorscheme nordic
]])

vim.cmd('source config/airline.vim')
vim.cmd('source config/maps.vim')
