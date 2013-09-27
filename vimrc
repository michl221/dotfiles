call pathogen#infect()
"call pathogen#incubate()
call pathogen#helptags()
map <leader>td <Plug>TaskList
filetype off
colorscheme darkblue
syntax on
filetype plugin indent on
filetype plugin on
set foldmethod=indent
set foldlevel=99
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionsType = "context"
set completeopt=menuone,longest,preview

" vim-latex
set grepprg=grep\ -nH\ $*
"let g:tex_flavor='latex'
let g:Tex_CompileRule_pdf='pdflatex --interaction=nonstopmode $*'
let g:Tex_DefaultTargetFormat='pdf'
set iskeyword+=:

" statusline
function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction
set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.
hi User1 guifg=#ffdad8  guibg=#880c0e
hi User2 guifg=#000000  guibg=#F4905C
hi User3 guifg=#292b00  guibg=#f4f597
hi User4 guifg=#112605  guibg=#aefe7B
hi User5 guifg=#051d00  guibg=#7dcc7d
hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
hi User8 guifg=#ffffff  guibg=#5b7fbb
hi User9 guifg=#ffffff  guibg=#810085
hi User0 guifg=#ffffff  guibg=#094afe
set laststatus=2
set modeline
set hlsearch
set incsearch
" map m :nohl<CR>
set number
set wrap
set linebreak
nnoremap <F5> :GundoToggle<CR>
nnoremap <F6> :TlistToggle<CR><C-w>h
set shiftwidth=4
"let mapleader="," " , is used to repeat f,F,t,T
set backspace=indent,eol,start
set shiftround
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" easier window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" clear highlight search with ,/
nmap <silent> ,/ :nohlsearch<CR>

set ssop-=options
set ssop-=folds

set tabstop=4

let g:syntastic_always_populate_loc_list=1

