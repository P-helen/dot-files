set number

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

:language 
set encoding=utf-8

" Plugins will be downloaded under the specified directory
call plug#begin('~/.vim/plugged')

" Declare the list of plugins
Plug 'lervag/vimtex'
 let g:tex_flavor = 'latex'
 let g:vimtex_view_method = 'zathura'
 let g:vimtex_quickfix_mode = 0
Plug 'KeitaNakamura/tex-conceal.vim'
 set conceallevel =1
 let g:tex_conceal = 'abdmg'
 hi Conceal ctermbg = none


Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'neovim/pynvim'
Plug 'mhinz/neovim-remote'
 let g:vimtex_compiler_progname = 'nvr'

 let g:vimtex_fold_manual = 1
 let g:vimtex_latexmk_continuos = 1

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


