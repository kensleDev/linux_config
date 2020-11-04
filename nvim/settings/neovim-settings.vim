
nnoremap <SPACE> <Nop>
let mapleader=" "
set signcolumn=yes

:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

source $HOME/.config/nvim/settings/base-settings.vim
source $HOME/.config/nvim/plugins/neovim-plugins.vim
