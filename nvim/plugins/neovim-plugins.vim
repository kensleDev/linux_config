" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

	Plug 'tpope/vim-commentary'
	Plug 'justinmk/vim-sneak'
	Plug 'unblevable/quick-scope'
	Plug 'haya14busa/incsearch.vim'
	Plug 'herrbischoff/cobalt2.vim'
	" Plug 'https://github.com/bogdan0083/vim-easymotion.git', { 'branch': 'fix/label-position' }
	Plug 'neoclide/coc.nvim', { 'branch': 'release' }
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'liuchengxu/vim-which-key'
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'voldikss/vim-floaterm'
	" Plug 'ludovicchabant/vim-gutentags'
	Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

" Initialize plugin system
call plug#end()

highlight Normal ctermfg=black ctermbg=lightgrey

set termguicolors

colorscheme cobalt2

source $HOME/.config/nvim/plugins/config/sneak.config.vim
source $HOME/.config/nvim/plugins/config/quickscope.config.vim
source $HOME/.config/nvim/plugins/config/fzf.config.vim
source $HOME/.config/nvim/plugins/config/airline.config.vim
source $HOME/.config/nvim/plugins/config/whichkey.config.vim
source $HOME/.config/nvim/plugins/config/floaterm.config.vim
source $HOME/.config/nvim/plugins/config/ranger.config.vim

" source $HOME/.config/nvim/plugins/config/easymotion.vim
