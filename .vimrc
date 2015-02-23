execute pathogen#infect()
syntax on

set nowrap
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set nojoinspaces
set pastetoggle=<F12>
set mouse=a
set nu
set showmatch
set incsearch
set hlsearch
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. 
set comments=sl:/*,mb:*,elx:*/

autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer> if !exists('g:spf13_keep_trailing_whitespace') | call StripTrailingWhitespace() | endif

filetype plugin indent on
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeQuitOnOpen=1

map <C-e> <plug>NERDTreeTabsToggle<CR>
map <leader>e :NERDTreeFind<CR>
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_
map <Leader>= <C-w>=

nmap <silent> <leader>/ :set invhlsearch<CR>


function! StripTrailingWhitespace()
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l,c)
endfunction
