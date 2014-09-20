" Bundle ------------------------------------------------------------------ {{{
" Sun Sep 21 00:46:43 CST 2014
" refer https://github.com/connermcd/dotfiles.git
" and  https://bitbucket.org/sjl/dotfiles
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'vim-scripts/L9'
Bundle 'Valloric/YouCompleteMe'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'bling/vim-airline'
Bundle 'payneseu/nerdtree'
Bundle 'Townk/vim-autoclose'
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/tcd.vim'
Bundle 'vim-scripts/cmdline-completion'
Bundle 'vim-scripts/vcscommand.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vim-scripts/YankRing.vim'


call vundle#end()
" }}}

" Plugins Configuration --------------------------------------------------- {{{
" Fuzzy Finder ------------------------------------------------------------ {{{
let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 400
let g:fuf_mrucmd_maxItem = 400
let g:fuf_file_exclude = '\v\~$|\.(DS_Store|o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
nnoremap <silent> sj     :FufBuffer<CR>
nnoremap <silent> sk     :FufFileWithCurrentBufferDir<CR>
nnoremap <silent> sK     :FufFileWithFullCwd<CR>
nnoremap <silent> s<C-k> :FufFile<CR>
nnoremap <silent> sl     :FufCoverageFileChange<CR>
nnoremap <silent> sL     :FufCoverageFileChange<CR>
nnoremap <silent> s<C-l> :FufCoverageFileRegister<CR>
nnoremap <silent> sd     :FufDirWithCurrentBufferDir<CR>
nnoremap <silent> sD     :FufDirWithFullCwd<CR>
nnoremap <silent> s<C-d> :FufDir<CR>
nnoremap <silent> sn     :FufMruFile<CR>
nnoremap <silent> sN     :FufMruFileInCwd<CR>
nnoremap <silent> sm     :FufMruCmd<CR>
nnoremap <silent> su     :FufBookmarkFile<CR>
nnoremap <silent> s<C-u> :FufBookmarkFileAdd<CR>
vnoremap <silent> s<C-u> :FufBookmarkFileAddAsSelectedText<CR>
nnoremap <silent> si     :FufBookmarkDir<CR>
nnoremap <silent> s<C-i> :FufBookmarkDirAdd<CR>
nnoremap <silent> sT     :FufTag<CR>
nnoremap <silent> st     :FufTag!<CR>
nnoremap <silent> s<C-]> :FufTagWithCursorWord!<CR>
nnoremap <silent> s,     :FufBufferTag<CR>
nnoremap <silent> s<     :FufBufferTag!<CR>
vnoremap <silent> s,     :FufBufferTagWithSelectedText!<CR>
vnoremap <silent> s<     :FufBufferTagWithSelectedText<CR>
nnoremap <silent> s}     :FufBufferTagWithCursorWord!<CR>
nnoremap <silent> s.     :FufBufferTagAll<CR>
nnoremap <silent> s>     :FufBufferTagAll!<CR>
vnoremap <silent> s.     :FufBufferTagAllWithSelectedText!<CR>
vnoremap <silent> s>     :FufBufferTagAllWithSelectedText<CR>
nnoremap <silent> s]     :FufBufferTagAllWithCursorWord!<CR>
nnoremap <silent> sg     :FufTaggedFile<CR>
nnoremap <silent> sG     :FufTaggedFile!<CR>
nnoremap <silent> so     :FufJumpList<CR>
nnoremap <silent> sp     :FufChangeList<CR>
nnoremap <silent> sq     :FufQuickfix<CR>
nnoremap <silent> sy     :FufLine<CR>
"  nnoremap <silent> sh     :FufHelp<CR>
nnoremap <silent> se     :FufEditDataFile<CR>
nnoremap <silent> sr     :FufRenewCache<CR>
nnoremap <silent> sh     :FufMarkList<CR>
" }}}
" YouCompleteMe ----------------------------------------------------------- {{{
syntax on

let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_auto_trigger = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_show_diagnostics_ui = 1
let g:ycm_enable_diagnostic_signs = 1
set completeopt-=preview   " disable preview windows for completion
let g:ycm_confirm_extra_conf = 1

" }}}
" Airline ----------------------------------------------------------------- {{{
"if has("gui_running")

  let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }

	let g:airline_theme = 'badwolf'

"if has("gui_running")
	let g:airline_powerline_fonts=1
	let g:airline_left_sep = ''
	let g:airline_left_alt_sep = ''
	let g:airline_right_sep = ''
	let g:airline_right_alt_sep = ''

	let g:airline#extensions#tabline#show_buffers = 1
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#left_sep = ''
	let g:airline#extensions#tabline#left_alt_sep =''
	let g:airline#extensions#tagbar#enabled = 1
"else 
"	let g:airline_powerline_fonts=1
"	let g:airline_left_sep = ''
""	let g:airline_left_alt_sep = ''
"	let g:airline_right_sep = ''
""	let g:airline_right_alt_sep = ''
"
"	let g:airline#extensions#tabline#show_buffers = 0
"	let g:airline#extensions#tabline#enabled = 1
"	let g:airline#extensions#tabline#left_sep = ''
""	let g:airline#extensions#tabline#left_alt_sep =''
"	let g:airline#extensions#tagbar#enabled = 1
"endif
	"
"	let g:airline_section_a = 'N'
	let g:airline_section_b = '%f%m'
	let g:airline_section_c = ''
	let g:airline_section_x = '[%-.50{CurDir()}]'
	let g:airline_section_y = '%y'
	let g:airline_section_z = '%c, %l/%L %p%%'
	let g:airline_section_warning = '' " (syntastic, whitespace)

set laststatus=2
set statusline=\ %<%F%m%=[%-.50{CurDir()}]\ %y\ %c,\ %l/%L\ \ %p%%\ 
function! CurDir()
	let curdir = substitute(getcwd(), $HOME, "~", "g")
	return curdir
endfunction

"endif
" }}}
" NerdTree ---------------------------------------------------------------- {{{
nmap <Leader>n	:NERDTreeToggle<CR>
nmap <Leader>N	:NERDTreeFind<CR>
" }}}
" AutoClose --------------------------------------------------------------- {{{
let g:AutoCloseProtectedRegions = ["Dialog", "ThoughBubble"]
" }}}
" TagBar ------------------------------------------------------------------ {{{
noremap <Leader>f	:TagbarToggle<CR><C-w>l
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
" }}}
" Tcd --------------------------------------------------------------------- {{{
cabbrev cd Tcd
" }}}
" cmdline-completion ------------------------------------------------------ {{{
"http://foocoder.com/blog/mei-ri-vimcha-jian-suo-jin-xian-shi-vim-indent-guides.html/
cmap <C-J> <Plug>CmdlineCompletionBackward
cmap <C-K> <Plug>CmdlineCompletionForward
" }}}
" VSCCommand -------------------------------------------------------------- {{{
"" ==============  VCSCommand.vim =====================
"let VCSCommandSVKExec='disabled no such executable'
let VCSCommandDeleteOnHide=1	
let VCSCommandDisableMappings=1
"let VCSCommandEnableBufferSetup=1
nmap <Leader>sd	:VCSVimDiff<CR>
augroup VCSCommand
	autocmd User VCSBufferCreated silent! nmap <unique> <buffer> q :bwipeout<cr> | setlocal nomodifiable
augroup END
nmap <Leader>dg		:diffget<CR>
" }}}
" YankRing ---------------------------------------------------------------- {{{
let g:yankring_min_element_length = 2
nmap \r :YRShow<CR>
let g:yankring_replace_n_pkey = '<A->>'
let g:yankring_replace_n_nkey = '<A-<>'
" }}}
" }}}

" Basic options ----------------------------------------------------------- {{{
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set smarttab
set vb t_vb=
set scrolloff=5
set sidescroll=10
set history=1000
set ruler
set showcmd
set incsearch
set hidden
set diffopt=filler,vertical

set ttymouse=xterm2
set mouse=a
set splitbelow
set splitright
set nobackup
set noswapfile
set magic
set completeopt=longest,menuone
set ttyfast

"set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj,*~,*.swp,*.DS_Store,*.git,*.svn,*.hg
set lazyredraw

set hlsearch
set autoindent

set confirm

syntax on
" }}}

set cursorline
if has("gui_running")
	set guioptions+=c
else
	set t_Co=256
	colorscheme molokai22
endif


set foldmethod=marker
noremap <SPACE> za

iabbrev  -...  <C-R>=repeat('-', 80 - col(".") - 4 ) . " {{{"
iabbrev		"}   " }}}
