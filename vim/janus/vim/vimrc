""
"" Janus setup
""

" Define paths
let g:janus_path = escape(fnamemodify(resolve(expand("<sfile>:p")), ":h"), ' ')
let g:janus_vim_path = escape(fnamemodify(resolve(expand("<sfile>:p" .  "vim")), ":h"), ' ')
let g:janus_custom_path = expand("~/.janus")

" Source janus's core
exe 'source ' . g:janus_vim_path . '/core/before/plugin/janus.vim'

let g:ConqueTerm_ReadUnfocused = 1

" You should note that groups will be processed by Pathogen in reverse
" order they were added.
call janus#add_group("tools")
call janus#add_group("langs")
call janus#add_group("colors")

""
"" Customisations
""

if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif


" Disable plugins prior to loading pathogen
exe 'source ' . g:janus_vim_path . '/core/plugins.vim'

""
" Pathogen setup
"

" Load all groups, custom dir, and janus core
call janus#load_pathogen()
"
" " .vimrc.after is loaded after the plugins have loaded

map ñ :call NERDComment(0,"toggle") <CR>
nmap Ñ :NERDTree <CR>
noremap <Leader>s :w<CR>
noremap <Leader>x :x<CR>

set guifont=DejaVu\ Sans\ Mono\ 11
filetype plugin on

inoremap ,c <C-o>:call NERDComment(0,"toggle")<C-m>

set clipboard=unnamedplus

execute pathogen#infect()
syntax on
filetype plugin indent on

set noswapfile"

"backup options
set backup
set backupdir=./.backup
set directory=./.backup

"git commit - add spell checking and automatic wrapping at the
"recommended 72 columns
autocmd Filetype gitcommit setlocal spell textwidth=72
