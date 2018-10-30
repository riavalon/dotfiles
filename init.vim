:set shell=/bin/bash
set nocompatible
filetype off                  " required
:set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'flazz/vim-colorschemes'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'michalliu/sourcebeautify.vim'
Plugin 'palantir/tslint'
Plugin 'tbastos/vim-lua'
Plugin 'andymass/vim-tradewinds'
Plugin 'posva/vim-vue'
Plugin 'sekel/vim-vue-syntastic'
Plugin 'skywind3000/vim-keysound'
Plugin 'Jimeno0/vim-chito'
Plugin 'dennougorilla/azuki.vim'
Plugin 'ruanyl/vim-fixmyjs'
Plugin 'lifepillar/vim-solarized8'
Plugin 'Yggdroot/duoduo'
Plugin 'daitouyu0723/tabnumber.vim'
Plugin 'aradunovic/perun.vim'
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-abolish'
Plugin 'Elzair/vim-line-numbers'
Plugin 'flowtype/vim-flow'
Plugin 'Valloric/YouCompleteMe'
Plugin 'elmcast/elm-vim'
Plugin 'mattn/emmet-vim'
Plugin 'mmozuras/snipmate-mocha'
Plugin 'tagexplorer.vim'
" Plugin 'groenewege/vim-less'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'
Plugin 'cespare/vim-toml'
Plugin 'grep.vim'
" Plugin 'nikvdp/ejs-syntax'
Plugin 'eslint/eslint'
Plugin 'mxw/vim-jsx'
Plugin 'godlygeek/csapprox'
Plugin 'leafgarland/typescript-vim'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'galooshi/vim-import-js'
Plugin 'roman/golden-ratio'
Plugin 'mhinz/vim-grepper'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-speeddating'
" Plugin 'tpope/vim-endwise'

" Colour Schemes
Plugin 'nightsense/strawberry'
Plugin 'nightsense/nemo'
Plugin 'kudabux/vim-srcery-drk'
Plugin 'hzchirs/vim-material'
Plugin 'AlessandroYorba/Alduin'
Plugin 'archseer/colibri.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'hukl/Smyck-Color-Scheme'
Plugin 'DrowsySaturn/VIvid.vim'
Plugin 'scheakur/vim-scheakur'
Plugin 'jscappini/material.vim'
Plugin 'mtglsk/mushroom'
Plugin 'xiaody/thornbird.vim'
Plugin 'mhumeSF/one-dark.vim'
Plugin 'ronny/birds-of-paradise.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'gertjanreynaert/cobalt2-vim-theme'
Plugin 'nice/sweater'

Plugin 'surround.vim'
Plugin 'Handlebars'
Plugin 'cuteTodoList'
Plugin 'bling/vim-airline'

Plugin 'tpope/vim-commentary'
Plugin 'terryma/vim-expand-region'
Plugin 'comments.vim'
Plugin 'joonty/vdebug'
Plugin 'digitaltoad/vim-jade'
Plugin 'loremipsum'
Plugin 'godlygeek/tabular'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'airblade/vim-gitgutter'
" Plugin 'walm/jshint.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'nono/jquery.vim'
Plugin 'chrisbra/Colorizer'
Plugin 'tomasr/molokai'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'othree/html5.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'elzr/vim-json'
Plugin 'spacehi.vim'
Plugin 'rizzatti/dash.vim'


map ` :NERDTreeToggle<CR>
" map <Leader>` :JSHint<CR>
map <Leader>fw :FixWhitespace<CR>
map <Leader>f :Fixmyjs<cr>
imap <Leader>s <Esc>:Loremipsum! 13 _ _ <Esc>i <Backspace>

nmap <Leader>s <Esc>:!karma start --file %<CR>

nmap <Leader>l <Esc>:KeysoundEnable<CR>
nmap <Leader>h <Esc>:KeysoundDisable<CR>


autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

nnoremap<Leader>bc :CoffeeBuffer2JS<CR>
nnoremap<Leader>bs :JSBuffer2Coffee<CR>
nnoremap<Leader>sl :CoffeeSelection2JS<CR>
nnoremap<Leader>bl :JSSelection2Coffee<CR>
nnoremap<Leader>ss :SyntasticToggleMode<CR>

nnoremap<Leader>dd :Dash<CR>
nnoremap<Leader>u :m -2<CR>
nnoremap<Leader>y :m +1<CR>

:nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
:nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
:nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
:nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
:nmap \r :set tabstop=2 shiftwidth=2 softtabstop=0 expandtab smarttab<CR>

" nnoremap<Leader>lm :LengthmattersToggle<CR>

vmap <C-v> <Plug>(expand_region_shrink)
vmap v <Plug>(expand_region_expand)

nnoremap<Leader>it :set expandtab tabstop=2 shiftwidth=2<CR>
nnoremap<Leader>ft :set expandtab tabstop=4 shiftwidth=4<CR>

:let b:match_words = '<:>,<tag>:</tag>'
:let g:airline_theme='luna'
:let s:opt_indent_char="\t"
:let g:user_emmet_leader_key='<Leader>'
map <Tab> :cnext<CR>
:set cursorline
:set ignorecase
:syntax on
:set hls
let NERDTreeQuitOnOpen = 1
:set tabstop=2
:set shiftwidth=2
:set autoindent
:set smartindent
:set cindent
:set laststatus=2
:set lcs=tab:\|\ 
:set list
:set noexpandtab
setlocal noexpandtab
autocmd FileType sass setlocal noexpandtab
:set noswapfile
:set nu

" COLOUR SCEHEMS

" :set background=light
" :set background=dark
" :colo 0x7A69_dark
" :colo PapayaWhip
" :colo alduin
" :colo chrysoprase
" :colorscheme ChocolatePapaya
" :colorscheme alduin
" :colorscheme babymate256
:colorscheme ChocolateLiquor
" :colorscheme badwolf
" :colorscheme base16-atelierlakeside
" :colorscheme bayQua
" :colorscheme baycomb_modified
" :colorscheme bubblegum-256-dark
" :colorscheme cake16
" :colorscheme chrysoprase
" :colorscheme cobalt2
" :colorscheme corporation
" :colorscheme dark-ruby
" :colorscheme desertEx
" :colorscheme desertEx_dark
" :colorscheme gentooish
" :colorscheme inkpot_custom
" :colorscheme jellybeans
" :colorscheme cake16
" :colorscheme lucius
" :colorscheme material
" :colorscheme molokai
" :colorscheme mushroom
" :colorscheme onedark
" :colorscheme papercolor
" :colorscheme rainbow_fine_blue
" :colorscheme rainbow_fruit
" :colorscheme scheakur
" :colorscheme solarized
" :colorscheme solarized8_dark_flat
" :colorscheme srcery-drk
" :colorscheme behelit
" :colorscheme rainbow_fine_blue
" :colorscheme vim-material
:hi Search cterm=bold ctermfg=197 ctermbg=225 guifg=#ff0070 guibg=#ffe0f4
:set undofile
:set undodir=$HOME/.vimundo
:set undolevels=1000
:set undoreload=10000
vnoremap // y/<C-R>"<CR>
vnoremap /j :vimgrep "<C-R><CR>" **/*.js

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

if filereadable(glob("./.vimrc.local"))
	source ./.vimrc.local
endif

nnoremap <F5> :UndotreeToggle<cr>
let g:jsx_ext_required = 0

vnoremap // y/<C-R>"<CR>

:set backspace=indent,eol,start
:set relativenumber
:set number
:set tabstop=2 shiftwidth=2 softtabstop=0 expandtab smarttab
:let g:syntastic_typescript_checkers = ['tslint']
:let g:syntastic_typescript_tsc_args = "--experimentalDecorators"
:let g:syntastic_disabled_filetypes=['scss']
:let g:syntastic_always_populate_loc_list = 1
:let g:syntastic_auto_loc_list = 1
:let g:elm_syntastic_show_warnings = 1
:let g:ycm_confirm_extra_conf = 0
:let g:ycm_semantic_triggers = {
      \ 'elm' : ['.'],
      \}
:let g:ctrlp_max_files=20000
:let g:ctrlp_custom_ignore = 'ios\|android\|bower_components\|node_modules\|DS_Store\|git\|coverage\|elm-stuff'
autocmd FileType rust setlocal shiftwidth=4 tabstop=4
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
:set termguicolors
:set colorcolumn=170
:set wildignore+=**/node_modules/**
:let g:indent_guides_guide_size = 1
:let g:indent_guides_enable_on_vim_startup = 1

" flow stuff
:let g:flow#autoclose = 1
:let g:flow#enable = 1
:let g:flow#errjmp = 1
:let g:fixmyjs_engine = 'eslint'

autocmd BufEnter *.elm colorscheme lucius
" autocmd BufEnter *.js colorscheme colibri
" autocmd BufEnter *.js colorscheme badwolf
" autocmd BufEnter *.js colorscheme chrysoprase
" autocmd BufEnter *.js set nocursorline
" autocmd BufEnter *.ts colorscheme chrysoprase
" autocmd BufEnter *.ts colorscheme alduin
" autocmd BufEnter *.ts set nocursorline
" autocmd BufEnter *.py colorscheme chrysoprase
" autocmd BufEnter *.py colorscheme badwolf
" autocmd BufEnter *.elm colorscheme bubblegum-256-dark
" autocmd BufEnter *.html colorscheme cake16
" autocmd BufEnter *.py colorscheme solarized8_dark_flat
autocmd BufEnter *.py set cursorline
" autocmd BufEnter *.json colorscheme PaperColor

autocmd BufEnter *.* set formatoptions-=cro
:set formatoptions-=cro
" :set background=dark
" :hi CursorLine cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkblue guifg=white
