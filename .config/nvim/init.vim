"Plugin Manager
call plug#begin('~/.vim/plugged')
  "eslint and prettier
  Plug 'w0rp/ale'

  "coc.vim (intellisense for vim)
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " coc ext""ensions
  let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-java']

  "Auto bracket close plugin 
  Plug 'rstacruz/vim-closer'

  " add this line to your .vimrc file
  Plug 'mattn/emmet-vim', { 'for': ['javascript.jsx', 'html', 'css'] }

  "------------------------ VIM TSX ------------------------
  " by default, if you open tsx file, neovim does not show syntax colors
  " vim-tsx will do all the coloring for jsx in the .tsx file
  Plug 'ianks/vim-tsx'

  "------------------------ VIM TSX ------------------------
  " by default, if you open tsx file, neovim does not show syntax colors
  " typescript-vim will do all the coloring for typescript keywords
  Plug 'leafgarland/typescript-vim'

  " Vim Color Theme
  Plug 'gruvbox-community/gruvbox'

call plug#end()

colorscheme gruvbox
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax enable                " enable syntax processing
set background=light

"emmet settings for jsx
let g:user_emmet_install_global = 0
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

autocmd FileType html,css,javascript.jsx EmmetInstall

let g:user_emmet_leader_key=','

" coc.vim use tab select options  
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" == AUTOCMD ================================ 
" by default .ts file are not identified as typescript and .tsx files are not
" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
" == AUTOCMD END ================================

"Prettier and eslint
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'


let g:ale_fix_on_save = 1




" Spaces & Tabs {{{
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
" }}} Spaces & Tabs

" better ESC
inoremap jk <esc>
set number
set cursorline
set title
set relativenumber

"copy to clipboard
set clipboard=unnamed
