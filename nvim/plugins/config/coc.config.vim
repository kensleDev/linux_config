" Explorer
let g:coc_explorer_global_presets = {
	\   '.vim': {
	\     'root-uri': '~/.vim',
	\   },
	\   'tab': {
	\     'position': 'tab',
	\     'quit-on-open': v:true,
	\   },
	\   'floating': {
	\     'position': 'floating',
	\     'open-action-strategy': 'sourceWindow',
	\   },
	\   'floatingTop': {
	\     'position': 'floating',
	\     'floating-position': 'center-top',
	\     'open-action-strategy': 'sourceWindow',
	\   },
	\   'floatingLeftside': {
	\     'position': 'floating',
	\     'floating-position': 'left-center',
	\     'floating-width': 50,
	\     'open-action-strategy': 'sourceWindow',
	\   },
	\   'floatingRightside': {
	\     'position': 'floating',
	\     'floating-position': 'right-center',
	\     'floating-width': 50,
	\     'open-action-strategy': 'sourceWindow',
	\   },
	\   'simplify': {
	\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
	\   }
	\ }

function! PlugCoc(info) abort
  if a:info.status ==? 'installed' || a:info.force
    !yarn install
    call coc#util#install_extension(join(get(s:, 'coc_extensions', [])))
  elseif a:info.status ==? 'updated'
    !yarn install
    call coc#util#update()
  endif
  call PlugRemotePlugins(a:info)
endfunction


" Use preset argument to open it
nmap <space>ed :CocCommand explorer --preset .vim<CR>
nmap <space>ef :CocCommand explorer --preset floating<CR>
nmap <space>e :CocCommand explorer --preset floatingRightside<CR>
" List all presets
nmap <space>el :CocList explPresets
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif


