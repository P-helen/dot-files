language en_US.utf8

" Basics
	set number relativenumber
	let mapleader =","
	let g:python_host_prog = '/usr/bin/python2'
	let g:python3_host_prog = '/usr/bin/python3'


" Autocompletion
	set wildmode=longest,list,full

" Compile document, be it groff/LaTeX/markdown/etc.
	map <leader>c :w! \| !compiler <c-r>%<CR>

" Compile python code
 	map <leader>p :w! \| !python %

" Save and compile matlab code
	map <leader>m :w! \| MatlabRun

" Align on = sign
 	map <leader>ae :Align =

" Align on % sign
 	map <leader>ap :Align % 

" Align on # sign
	map <leader>ah :Align #

" Add tab space to % sign
	map <leader>tp :s/%/    %

" Add tab space to # sign
	map <leader>th :s/#/    #

" Spits open at the bottom and right
	set splitbelow splitright

" Shorcutting split navigation
 	map <C-h> <c-w>h
 	map <C-j> <c-w>j
 	map <C-k> <c-w>k
 	map <C-l> <c-w>l

" Check file in shellcheck
	map <leader>s :!clear && shellcheck %<CR>

" Runs script to clear out tex build files when closing a .tex file (need this
" with vimtex or no?)
	autocmd VimLeave *.tex !texclear %

" Plugins will be downloaded under the specified directory
	call plug#begin('~/.vim/plugged')


" Declare the list of plugins
	Plug 'lervag/vimtex'
 		let g:tex_flavor = 'latex'
		"let g:vimtex_view_forward_search_on_start = 'zathura'
 		let g:vimtex_view_method = 'zathura'
 		let g:vimtex_quickfix_mode =0
		"set conceallevel =1
 		"let g:tex_conceal = 'abdmg' 
	Plug 'junegunn/goyo.vim'
		map <leader>f :Goyo \| set linebreak<CR>

	"Plug 'Valloric/YouCompleteMe'
	
	Plug 'chrisbra/csv.vim'

	Plug 'SirVer/ultisnips'
	 let g:UltiSnipsExpandTrigger = '<tab>'
	 let g:UltiSnipsJumpForwardTrigger = '<tab>'
	 let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
	 let g:UltiSnipsSnippetDirectories=["UltiSnips", "tex.snippets"]

	Plug 'neovim/pynvim'

	Plug 'mhinz/neovim-remote'
	 let g:vimtex_compiler_progname = 'nvr'

	 let g:vimtex_fold_manual = 1
	 let g:vimtex_latexmk_continuos = 1

	Plug 'dylanaraps/wal.vim'

	Plug 'PietroPate/vim-tex-conceal'
	 set conceallevel=2
	 let g:tex_conceal="abdgms"
	
	Plug 'MortenStabenau/matlab-vim'

	Plug 'junegunn/vim-easy-align'
	
	" List ends here. Plugins become visible to Vim after this call.
	call plug#end()

colorscheme wal
set background = "dark"

set hlsearch
hi Search ctermbg=Blue
hi Search ctermfg=Red

source ~/.config/nvim/align.vim

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Remap ctrl-a for numeric sequence
"nmap <C-z> <C-a>

"""LATEX SNIPPETS"""
autocmd FileType tex inoremap ,alpha 	\alpha
autocmd FileType tex inoremap ,beta  	\beta
autocmd FileType tex inoremap ,gamma 	\gamma
autocmd FileType tex inoremap ,delta 	\delta
autocmd FileType tex inoremap ,del 	\Delta 
autocmd FileType tex inoremap ,epsilon	\epsilon 
autocmd FileType tex inoremap ,zeta	\zeta
autocmd FileType tex inoremap ,eta	\eta
autocmd FileType tex inoremap ,theta	\theta
autocmd FileType tex inoremap ,kappa	\kappa
autocmd FileType tex inoremap ,lambda	\lambda
autocmd FileType tex inoremap ,mu	\mu
autocmd FileType tex inoremap ,nu	\nu
autocmd FileType tex inoremap ,pi	\pi
autocmd FileType tex inoremap ,rho	\rho
autocmd FileType tex inoremap ,sigma	\sigma
autocmd FileType tex inoremap ,tau	\tau
autocmd FileType tex inoremap ,phi	\phi
autocmd FileType tex inoremap ,Phi	\Phi
autocmd FileType tex inoremap ,psi	\psi
autocmd FileType tex inoremap ,omega	\omega

