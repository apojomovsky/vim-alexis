" Destination directory for plugins managed by vim-plug
call plug#begin('~/.vim/plugged')

" List of plugins for vim-plug
Plug 'flazz/vim-colorschemes'
Plug 'ntpeters/vim-better-whitespace'
Plug 'nvie/vim-flake8'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'rhysd/vim-grammarous'
Plug 'scrooloose/nerdtree'
Plug 'tomasiser/vim-code-dark'
Plug 'tomtom/tcomment_vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'wincent/command-t'
Plug 'Yggdroot/indentLine'

" Spell and grammar check
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-SpellCheck'

" vim-plug list ends here.
call plug#end()

" Indentation
set expandtab
set shiftwidth=2
set softtabstop=2
filetype plugin indent on

" Add capital letters
command! Q  quit
command! W  write

" Enable codedark colorscheme
set t_Co=256
set t_ut=
colorscheme codedark
let g:airline_theme = 'codedark'

" Temporal Workaround for neovim's
" https://github.com/neovim/neovim/issues/7369
highlight Normal ctermbg=NONE

" Navigate through open files
nnoremap H gT
nnoremap L gt

" NERD tree
map <F2> <ESC>:NERDTreeToggle<CR>

" Clear search highlight
nnoremap <cr> :noh<CR><CR>:<backspace>

" Center cursor into search result
 nnoremap n nzz
 nnoremap N Nzz

" indentLine settings
let g:indentLine_char = '▏'

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <F9> <F9>:SyntasticToggleMode<CR> :SyntasticToggleMode<CR>

" vim-airline settings
let g:airline#extensions#tabline#enabled = 1


" vim-flake8 settings
autocmd FileType python map <buffer> <F3> :call Flake8()<CR>
let g:flake8_quickfix_height=10

" vim-cpp-enhanced-highlight settings
let c_no_curly_error=1
let g:cpp_class_decl_highlight = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_member_variable_highlight = 1

"YouCompleteMe settings
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1

let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_path_to_python_interpreter = '' "default ''

let g:ycm_server_log_level = 'info' "default info
let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)

let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_key_invoke_completion = '<C-Space>'

