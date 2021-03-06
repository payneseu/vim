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
Bundle 'vim-scripts/gtags.vim'
Bundle 'kshenoy/vim-signature'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'rking/ag.vim'
Bundle 'derekwyatt/vim-fswitch'

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
" Gtags ------------------------------------------------------------------- {{{
if has("gui_running")
	noremap <A-.> :Gtags<CR>
	noremap <A-r> :Gtags -r<CR>
	noremap <A-o> :Gtags -s<CR>
	noremap <A-g> :Gtags -g<CR> 
else
	noremap . :Gtags<CR>
	noremap r :Gtags -r<CR>
"	noremap j :Gtags -s<CR>
	noremap g :Gtags -g<CR> 
endif
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

" colorscheme {{{
set cursorline
if has("gui_running")
	set guioptions+=c
	colorscheme molokai
else
	set t_Co=256
	colorscheme molokai22
endif
	
" }}}

" }}}
" Mappings ---------------------------------------------------------------- {{{
let mapleader = ";"
" Normal mode ------------------------------------------------------------- {{{
noremap Y	y$
nmap <Leader>w	:w<CR>
nmap <Leader>q	:q<CR>
nmap <Leader>e	:e<Space>
nmap <Leader>sw	:w !sudo tee %<CR>
nmap <Leader>h	:vertical help<Space>
nmap <Leader>t	:tabedit<Space>
"nmap <Leader>x	:x<CR>
" switch window 
nmap <C-H>  <C-W>h
nmap <C-J>  <C-W>j
nmap <C-L>  <C-W>l
nmap <C-K>  <C-W>k
noremap <Leader>v	<C-W>v
noremap <Leader>s	<C-W>s
noremap <Leader>o	<C-W>o

noremap <SPACE>	<C-F>
noremap <S-SPACE>	<C-B>
noremap <BS>	<C-B>
noremap J	<C-D>
noremap K	<C-U>
" exchange mark ' and  `
nnoremap ' `
nnoremap ` '
"" swith tabs
noremap <A-n>	gt
noremap <A-p>	gT
"" shortcut for command
"" :w !sudo tee %
""
"" shourt for buffer operations
"nmap <A-TAB>	:bn<CR>
" map <A-TAB> 
nnoremap <ESC><TAB> :bn<CR>
"noremap <A-S-TAB> 
"input C-V then input key sequence to
"http://vim.wikia.com/wiki/Make_Shift-Tab_work
nnoremap  :bp<CR>
"nmap <A-S-TAB>	:bp<CR>
nmap <A-SPACE>	:b#<CR>
"nmap <Leader>d	:bd<CR>
"" keymappig for register operations
noremap <Leader>r	:registers<CR>
noremap <Leader>x	:<C-p>

nmap <Leader>y	"*yy
nmap <Leader>p	"*p

" resize window 
nmap +	<C-w>3+
nmap -	<C-w>3-
nmap <	<C-w>3<
nmap >	<C-w>3>
nmap =	<C-w>=

nmap <A-=> :resize<CR>:vertical resize<CR>
nmap = :resize<CR>:vertical resize<CR>

noremap N	Nzzzv
noremap g;	g;zz
noremap g,	g,zz
noremap <Leader>z	zmzvzz
nmap \h :nohlsearch<CR>
" }}}
" Insert mode ------------------------------------------------------------- {{{
inoremap jj		<Esc>
inoremap <C-a>	<Home>
inoremap <C-e>	<End>
inoremap <C-D>	<Del>
inoremap <C-b>	<S-Left>
inoremap <C-f>	<S-Right>
imap <A-d>	<S-Right><C-w>
" }}}
" Command mode ------------------------------------------------------- {{{
cmap jj		<C-c>
cnoremap <C-A>	<Home>
cnoremap <C-E>	<End>
cnoremap <C-B>	<Left>
cnoremap <C-F>	<Right>

if has("gui_running")
" only for Macvim <D-Left> D is Command key
	cmap <A-a>	<D-Left>
	cmap <A-e>	<D-Right>

	cnoremap <A-b>	<S-Left>
	cnoremap <A-f>	<S-Right>
	cnoremap <A-d>	<S-Right><S-Right><S-Left><C-w>
else
	cnoremap b	<S-Left>
	cnoremap f	<S-Right>
endif
" delet a word left of cursor
cmap <S-BS>	<C-w>
" }}}
" Visual mode ------------------------------------------------------------- {{{
"" key mapping for  visul mode
vmap <C-k>	{	
vmap <C-j>	}	
vmap <Leader>y	"*y
" }}}
" }}}
" FileType ---------------------------------------------------------------- {{{
autocmd BufNewFile,BufRead *.log set filetype=logecc
autocmd BufNewFile,BufRead *.log.[0-9] set filetype=logecc
autocmd BufNewFile,BufRead *tmux.conf set filetype=tmux
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" http://vim.wikia.com/wiki/Update_the_diff_view_automatically
autocmd InsertLeave,BufWritePost,CursorHold * if &diff == 1 | diffupdate | endif
" setlocal nomodifiable for svn diff
autocmd BufWinEnter *.svn-base setlocal nomodifiable 

autocmd FileType qf noremap <buffer> <silent> q :q<CR> | setlocal nowrap
autocmd FileType help noremap <buffer> <silent> q :q<CR> | vertical resize 84;
autocmd FileType c,cpp
    \ let b:AutoClosePairs = AutoClose#DefaultPairsModified("\"", "{}") |
	\ inoremap <buffer> { {<CR>}<ESC>kA<CR>
autocmd FileType python setlocal foldmethod=indent

autocmd FileType xml setlocal foldmethod=syntax |
	\ let g:xml_syntax_folding=1
autocmd FileType vim setlocal foldmethod=marker |
	\ setlocal formatoptions-=c formatoptions-=r formatoptions-=o |
    \ let b:AutoClosePairs = AutoClose#DefaultPairsModified("", "{} \"")

" }}}
" Functions --------------------------------------------------------------- {{{
" DiffOrig ---------------------------------------------------------------- {{{
" refert vimrc_example.vim 
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif 
" }}}
" Fold Quickfix ----------------------------------------------------------- {{{
"http://vim.wikia.com/wiki/Show_only_lines_in_quickfix_list_for_current_buffer 
if ! exists('g:foldmisses_context')
  let g:foldmisses_context = 0
endif

" Add manual fold from line1 to line2, inclusive.
function! s:Fold(line1, line2)
  if a:line1 < a:line2
    execute a:line1.','.a:line2.'fold'
  endif
endfunction

" Return list of line numbers for current buffer found in quickfix list.
function! s:GetHitLineNumbers(list)
  let result = []
  for d in a:list
    if d.valid && d.bufnr == bufnr('')
      call add(result, d.lnum)
    endif
  endfor
  return result
endfunction

function! s:FoldMisses(list, context)
  setlocal foldmethod=manual
  normal! zE
  let extra = a:context == 99999 ? g:foldmisses_context : a:context
  let last = 0
  for lnum in s:GetHitLineNumbers(a:list)
"    let start = last==0 ? 1 : last+extra
    let start = last==0 ? 1 : last+1+extra
    call s:Fold(start, lnum-1-extra)
    let last = lnum
  endfor
  call s:Fold(last+1+extra, line('$'))
"  call s:Fold(last+extra, line('$'))
endfunction

":[N]FoldMisses [N]     Show only the lines (and surrounding [N] lines
":[N]FoldLMisses [N]    of context) in the current buffer that appear
"                       in the quickfix / location list.
"                       Missed, error-free lines are folded away.
command! -bar -count=99999 FoldMisses call s:FoldMisses(getqflist(), <count>)
command! -bar -count=99999 FoldLMisses call s:FoldMisses(getloclist(0), <count>)
" }}}
" ToggleList -------------------------------------------------------------- {{{
"http://vim.wikia.com/wiki/Toggle_to_open_or_close_the_quickfix_window
function! GetBufferList()
  redir =>buflist
  silent! ls
  redir END
  return buflist
endfunction

function! ToggleList(bufname, pfx)
  let buflist = GetBufferList()
  for bufnum in map(filter(split(buflist, '\n'), 'v:val =~ "'.a:bufname.'"'), 'str2nr(matchstr(v:val, "\\d\\+"))')
    if bufwinnr(bufnum) != -1
      exec(a:pfx.'close')
      return
    endif
  endfor
  if a:pfx == 'l' && len(getloclist(0)) == 0
      echohl ErrorMsg
      echo "Location List is Empty."
      return
  endif
  let winnr = winnr()
  exec(a:pfx.'open')
  if winnr() != winnr
    wincmd p
  endif
endfunction

nmap <silent> \l :call ToggleList("Location List", 'l')<CR>
nmap <silent> \q :call ToggleList("Quickfix List", 'c')<CR>
" }}}
" }}}


noremap <SPACE> za

iabbrev  -...  <C-R>=repeat('-', 80 - col(".") - 4 ) . " {{{"
iabbrev		"}   " }}}
