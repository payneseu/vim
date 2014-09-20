
" Bundles {{{

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

call vundle#end()

"}}}


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

set statusline=\ %<%F%m%=[%-.50{CurDir()}]\ %y\ %c,\ %l/%L\ \ %p%%\ 
function! CurDir()
	let curdir = substitute(getcwd(), $HOME, "~", "g")
	return curdir
endfunction

"endif
" }}}

set confirm
set guioptions+=c
syntax on
set number

if has("gui_running")

else
	set t_Co=256
	colorscheme molokai22
endif


set foldmethod=marker
noremap <SPACE> za
