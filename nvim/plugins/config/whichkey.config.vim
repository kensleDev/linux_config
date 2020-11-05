" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
set timeoutlen=500

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
"
" " Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['e'] = [ ':CocCommand explorer --position right --width 70', 'explorer' ]
let g:which_key_map['r'] = [ ':Ranger'                    , 'ranger' ]
let g:which_key_map['d'] = [ ':FloatermNew lazydocker'    , 'docker' ]
let g:which_key_map['q'] = [ ':Startify'                  , 'startify' ]

" a is for comment
let g:which_key_map.a = {
     \ 'name' : '+comment',
     \ 'a' : [':Commentary' , 'comment'],
     \ }

" g is for g
let g:which_key_map.g = {
     \ 'name' : '+git',
     \ 'g' : [':FloatermNew lazygit' , 'lazygit'],
     \ 'b' : [':GBrowse'             , 'browse repo'],
     \ 'd' : [':Gdiffsplit'          , 'diff split'],
     \ }

" h is for comment
let g:which_key_map.j = {
     \ 'name' : '+splits',
     \ 'j' : ['<C-w>s' , 'split below'],
     \ 'k' : ['<C-w>v' , 'split right'],
     \ ';' : ['<C-w>q' , 'split close'],
     \ }

let g:which_key_map.f = {
      \ 'name' : '+find & replace' ,
      \ 'b' : [':Farr --source=vimgrep'    , 'files'],
      \ 'p' : [':Farr --source=rgnvim'     , 'project'],
      \ }

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':Snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }

" t is for terminal
let g:which_key_map.t = {
     \ 'name' : '+terminal',
     \ 'q' : [':FloatermNew' , 'new'],
     \ 't' : [':FloatermToggle' , 'toggle'],
     \ 'r' : [':FloatermNext' , 'next'],
     \ 'e' : [':FloatermPrev' , 'prev'],
     \ }


" x is for comment
let g:which_key_map.x = {
     \ 'name' : '+buffers',
     \ 'x' : [':bd' , 'buffer close'],
     \ 'c' : [':bn' , 'buffer next'],
     \ 'z' : [':bp' , 'buffer prev'],
     \ }


" Register which key map
call which_key#register('<Space>', "g:which_key_map")


