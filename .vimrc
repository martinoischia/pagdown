if has("win32")
    set shell=C:\Windows\Sysnative\wsl.exe
    set shellpipe=|
    set shellredir=>
    set shellcmdflag=
endif
"set shell=C:/Users/mischia/AppData/Local/Programs/Git/usr/bin/bash.exe

" TO be worked upon: folding and fold marks
set number 
set ignorecase
set smartcase
set so=999
set nowrap
set nowrapscan
syntax on
set cindent
set shiftwidth=4
set tabstop=4
set guifont=roboto_mono:h15
set shiftround " just when type >> when you already have 2 spaces it just adds 2
setlocal path=.,,

" Add Ctrl-X, Ctrl-C (cut, copy) in visual and insert mode;
" and Ctrl-V (paste) in insert mode:
vmap <silent> <C-X> "+x
vmap <silent> <C-C> "+y
imap <silent> <C-V> <Space><Esc>"+gPi<Delete>

function! NewBrowser()
    20vs | :e .
endfunction
" F12 to open a new netrw file browser buffer.
nnoremap <silent> <F12> :call NewBrowser()<CR>
"___________________

" Rafael part, modified (original file in this vim_notes folder)

" Basic look & feel
"colors monokai
"set guifont=Hack\ Nerd\ Font\ Regular\ 15

" File IO options
"set enc=utf-8
"set nobackup
"set nowritebackup
"set noswapfile

" Indentation and text width settings
"set softtabstop=2
"set expandtab
"set formatoptions-=t
"set textwidth=120
"set colorcolumn=121

" Display options:
"set noshowmode " writes instert on the bottom
"set hidden

" Update (for autocomplete)
"set updatetime=300 "for writing swap file
"set shortmess+=c "dk like removing some not very useful messages





" === PLUGIN CONFIG ===
" airline plugin configuration
"let g:airline_powerline_fonts = 1
"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"endif
" airline symbols from the 'Private use area' of the
" patched Hack from https://github.com/powerline/fonts
" or the 'Hack Nerd Font' or any other of the compatible
" 'nerd fonts' - see airline plugin docs.
"let g:airline_left_sep = ''
""let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''
"let g:airline_symbols.colnr = 'C'

" Use tab to trigger autocomplete but only after the start of non-whitespace line content.
"inoremap <silent><expr> <TAB>
"  \ pumvisible() ? "\<C-n>" :
"  \ CheckBackspace() ? "\<TAB>" :
"  \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Check if there's non-whitespace content before the cursor.
"function! CheckBackspace() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1] =~# '\s'
"endfunction

" Use <c-space> to trigger completion as well
"inoremap <silent><expr> <c-@> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)

" CoC code navigation:
"nmap <silent> gd :call CocAction('jumpDefinition', 'tab drop')<CR>
"nnoremap <silent> <F2> :call CocAction('jumpDefinition', 'tab drop')<CR>
"inoremap <silent> <F2> <Esc>:call CocAction('jumpDefinition', 'tab drop')<CR>i
"nmap <silent> gt :call CocAction('jumpTypeDefinition', 'tab drop')<CR>
"nmap <silent> gi :call CocAction('jumpImplementation', 'tab drop')<CR>
"nmap <silent> gr :call CocActionAsync('jumpReferences', 'tab drop')<CR>
"nmap <silent> gu :call CocActionAsync('jumpUsed', 'tab drop')<CR>

" Use K to show documentation in preview window.
"nnoremap <silent> K :call ShowDocumentation()<CR>

"function! ShowDocumentation()
"  if CocAction('hasProvider', 'hover')
"    call CocActionAsync('doHover')
"  else
"    call feedkeys('K', 'in')
"  endif
"endfunction

" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')

" CoC symbol renaming
"nmap <leader>rn <Plug>(coc-rename)

" === Custom keybindings ===

" Navigate through tabs with Ctrl-{Left|Right} arrow keys.
"nnoremap <silent> <C-Right> :tabnext<CR>
"nnoremap <silent> <C-Left>  :tabprevious<CR>


" Use Ctrl-S to save file in insert mode:
"imap <silent> <C-S> <Esc>:w<Enter>a

" Use Pause/Break to break the lines of the current paragraph
" (clobbers the 'r' bookmark).
"vmap <silent> <F21> mrgq`r
"imap <silent> <F21> <Esc>mrgqap`ri
"nmap <silent> <F21> mrgqap`r

