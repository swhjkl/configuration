set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/SwitchExt'
Plugin 'scrooloose/nerdtree'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/restore_view.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on

colo molokai
syntax on
set t_Co=256
set background=dark
set mouse=""
set colorcolumn=80,120
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set hlsearch
set ignorecase
set nospell
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set undodir=~/.vim/undo/
set undofile
set nowrap
set incsearch
set cursorline
set backspace=indent,eol,start
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
set autoindent
set viewoptions=cursor,folds,slash,unix
set hidden

let mapleader=","

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_max_diagnostics_to_display = 0
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
"let g:ycm_use_ultisnips_completer = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_add_preview_to_completeopt = 1 " 打开函数原型预览窗口
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1
"" 跳转到定义处, 分屏打开
"let g:ycm_goto_buffer_command = 'split-or-existing-window'
let g:ycm_seed_identifiers_with_syntax=1   "语言关键字补全,不过C++关键字都很短，所以，需要的自己打开
"" 直接触发自动补全 insert模式下，这里需要的原因是因为C语言标准库不会自动提示
"let g:ycm_key_invoke_completion = '<C-a>'
nnoremap <leader>jd :tab YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gd :tab YcmCompleter GoToDeclaration<CR>
nnoremap <leader>fi :YcmCompleter FixIt<CR>

nmap <Leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd bufenter * lcd %:p:h
let g:NERDTreeQuitOnOpen = 1

nmap <Leader>t :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_autofocus = 1

let g:switchext_srcext = "cpp"
nmap <Leader>s <ESC>:call SwitchExt()<CR>

let g:airline#extensions#whitespace#checks = []
let g:airline#extensions#tabline#enabled = 1

nmap <C-j> :bn<CR>
nmap <C-k> :bp<CR>
