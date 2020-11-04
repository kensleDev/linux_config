" Set floaterm window's background to black
" hi Floaterm guibg=black
" Set floating window border line color to cyan, and background to orange
" hi FloatermBorder guibg=orange guifg=cyan
" Set floaterm window background to gray once the cursor moves out from it
" hi FloatermNC guibg=gray

nnoremap <silent> <A-x>   :FloatermToggle<CR>
tnoremap <silent> <A-x>   <C-\><C-n>:FloatermToggle<CR>

nnoremap <A-a> :FloatermNew --height=0.2 --wintype=normal --name=server --position=bottom<CR>
nnoremap <A-s> :FloatermNew --width=0.5 --wintype=normal --name=server --position=right<CR>
nnoremap <A-d> :FloatermNew --height=0.9 --width=0.9 --wintype=floating --name=server --position=center<CR>
" nnoremap <slient <A-z> :FloatermNew --height=0.6 --width=0.9 --wintype=floating --name=server --position=center"
" tnoremap <slient <A-z> <C-\><C-n>:FloatermNew --height=0.6 --width=1 --wintype=floating --name=server --position=bottom --autoclose=2"

" nnoremap <silent> <A-z> :FloatermToggle --wintype=normal --position=right<CR>
" tnoremap <silent> <A-d> <C-\><C-n>:FloatermUpdate --height=0.2 --wintype=normal --name=server --position=bottom
" tnoremap <silent> <A-s> <C-\><C-n>:FloatermUpdate --wintype=floating --position=right --width 0.4 <CR>
" tnoremap <silent> <A-a> <C-\><C-n>:FloatermUpdate --wintype=floating --position=center --width 1 --height 1 <CR>

let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'
let g:floaterm_keymap_kill   = '<F5>'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
" let g:floaterm_width=0.8
" let g:floaterm_height=0.8
" let g:floaterm_wintitle=0
let g:floaterm_autoclose=1
