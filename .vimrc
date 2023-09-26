au BufWritePost  /home/mischia/googledrive/txt_documents/* !make -f /home/mischia/googledrive/Makefile push
" au BufReadCmd   /home/mischia/googledrive/txt_documents/* !make -f /home/mischia/googledrive/Makefile pull \| noautocmd read <amatch>

if argc() == 0
	augroup vimrc
		" Remove all vimrc autocommands
		autocmd!
		au VimEnter * cd ~/googledrive/txt_documents/ | e fbk_todo |vs vim_todo | wincmd w
	augroup END
endif

set laststatus=2
set statusline=[%n]%<%t\ %h%m%r%y%=%-14.(%l,%c%)\ %P

vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

set nonumber 
set ignorecase
set smartcase
set hlsearch

set so=999
set nowrap
set nowrapscan

set smartindent
set shiftwidth=4
set tabstop=4
set shortmess-=S
filetype plugin indent on 
syntax on

set guifont=roboto_mono:h15
set shiftround " just when type >> when you already have 2 spaces it just adds 2
setlocal path=.,,
set backspace=indent,eol,start
set splitright
set splitbelow

" Add Ctrl-X, Ctrl-C (cut, copy) in visual and insert mode;
" and Ctrl-V (paste) in insert mode:
vmap <silent> <C-X> "+x
vmap <silent> <C-C> "+y
imap <silent> <C-V> <Space><Esc>"+gPi<Delete>
inoremap <C-Space> <C-p>

function! NewBrowser()
    20vs | :e .
endfunction
" F12 to open a new netrw file browser buffer.
nnoremap <silent> <F12> :call NewBrowser()<CR>

if 1
  " Quite a few people accidentally type "q:" instead of ":q" and get confused
  " by the command line window.  Give a hint about how to get out.
  " If you don't like this you can put this in your vimrc:
  " ":augroup vimHints | exe 'au!' | augroup END"
  augroup vimHints
    au!
    autocmd CmdwinEnter *
	  \ echohl Todo | 
	  \ echo 'You discovered the command-line window! You can close it with ":q".' |
	  \ echohl None
  augroup END
endif

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
" Revert with: ":delcommand DiffOrig".
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

map <C-Tab> <Esc>:bn<CR>
map <C-s-Tab> <Esc>:bp<CR>
command Vt vert term
command VT vert term
command VS vert term
command Vs vert term
command W write

au TerminalWinOpen * setlocal bufhidden=hide

tnoremap <Esc> <C-w>N

inoremap <c-w><c-w> <esc><c-w><c-w>gi
inoremap <c-w>j <esc><c-w>jgi
inoremap <c-w>k <esc><c-w>kgi
inoremap <c-w>h <esc><c-w>hgi
inoremap <c-w>l <esc><c-w>lgi

inoremap <c-w> <nop>
inoremap <c-z> <esc><c-z>

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>

" Terminal in current window
command TerCur term ++curwin
cnoreabbrev <expr> ter getcmdtype() == ":" && getcmdline() == 'ter' ? 'TerCur' : 'ter'
cnoreabbrev <expr> term getcmdtype() == ":" && getcmdline() == 'term' ? 'TerCur' : 'ter'
"
"
"


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

