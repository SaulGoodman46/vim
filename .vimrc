" Abbrevations 

abbrev bashscript #!/bin/bash
abbrev flipflop always @(negedge clk or posedge nrst) begin 


" Show line numbers 

set number 
set ignorecase

set hlsearch

" Tab with 4 spaces  

set expandtab 

set tabstop=4 

"set guifont=Roboto Mono\ Regular:h11 

" Colorscheme 

colorscheme mycolo

 

" Cange rootfolder with opened file 

autocmd BufEnter * silent! :lcd%:p:h 

 

" Syntax 

au BufReadPost *.v set syntax=verilog_systemverilog
au BufReadPost *.py set syntax=python 
au BufReadPost Make* set syntax=make 
au BufReadPost make* set syntax=make 

set syntax=ON 

 

" Split vertical on right pannel 

set splitright 

 

" Shortcuts 

noremap <C-t> :tabnew<CR>	 

noremap <C-y> :vsplit .<CR>

noremap <C-q> :qa<CR>	 

noremap <C-s> :w<CR>	 

noremap <C-o> :e .<CR> 

 

" Wildmenu 

set wildmenu 

set wildmode=list:longest 

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx 

 

" Allow crosshair cursor highlighting. 

hi CursorLine   cterm=NONE ctermbg=0 

hi CursorColumn cterm=NONE ctermbg=0 

nnoremap <Leader>c :set cursorline! cursorcolumn!<CR> 

 

augroup CursorLine 

  au! 

  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline 

  au WinLeave * setlocal nocursorline 

augroup END 

 

"" Highlight 

hi! MyToDo ctermfg=57 guifg=#7300FF ctermbg=214 guibg=#52c0f7 

augroup my_todo_highlight 

    autocmd! 

    autocmd WinEnter,BufWinEnter * hi! MyToDo ctermfg=57 guifg=#7300FF ctermbg=214 guibg=#52c0f7 | call matchadd('MyToDo', 'TODO') 

augroup END


hi! MyUnconnected ctermfg=57 guifg=#7300FF ctermbg=214 guibg=#8fbc8f 

augroup my_unconnected_highlight 

    autocmd! 

    autocmd WinEnter,BufWinEnter * hi! MyUnconnected ctermfg=57 guifg=#7300FF ctermbg=214 guibg=#8fbc8f | call matchadd('MyUnconnected', 'UNCONNECTED') 

augroup END 

 

" Configurazione per FixMe 

hi! MyFixMe ctermfg=234 guifg=#101820 ctermbg=226 guibg=#cee227 

augroup my_fixme_highlight 

    autocmd! 

    autocmd WinEnter,BufWinEnter * hi! MyFixMe ctermfg=234 guifg=#101820 ctermbg=226 guibg=#cee227 | call matchadd('MyFixMe', 'DAHU') 

augroup END 

 

" Configurazione per ASK 

hi! MyAsk ctermfg=15 guifg=#FCF6F5 ctermbg=88 guibg=#ee29d3 

augroup my_ask_highlight 

    autocmd! 

    autocmd WinEnter,BufWinEnter * hi! MyAsk ctermfg=15 guifg=#FCF6F5 ctermbg=88 guibg=#ee29d3 | call matchadd('MyAsk', 'CORTANA') 

augroup END 
