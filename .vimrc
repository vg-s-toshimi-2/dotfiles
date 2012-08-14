" ヘルプドキュメント
helptags ~/.vim/vundle.git/doc                                                                                                                     
 
" Vundle
set nocompatible
filetype off 
 
set rtp+=~/.vim/vundle.git/
call vundle#rc()
 
" 管理したいプラグイン
" (1) gitHubの任意のリポジトリ
Bundle 'mattn/zencoding-vim'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'tpope/vim-fugitive'
Bundle 'hokaccha/vim-css3-syntax'
 
" (2) vim-scriptsの任意のリポジトリ
Bundle 'snipMate'
Bundle 'surround.vim'
Bundle 'AutoComplPop'
 
" カラーの有効か
syntax on
 
" [行,列]表示
set ruler
 
" タイトルをウィンドウに表示
set title
 
" ステータスラインを常に表示
set laststatus=2
 
" ステータスライン表示方法
set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %F%=%l,%c%V%8P
 
" 行番号表示
set number
 
" カーソル表示(行)
set cursorline
 
" カーソル表示(列)
set cursorcolumn

" 括弧入力時の対応する括弧を表示
set showmatch
 
" 対応する括弧の表示時間を2にする
set matchtime=2
 
" 検索結果文字列のハイライトを有効にする
set hlsearch
 
" esc連打で検索ハイライトを消す
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" タブを画面で表示する際の幅
set tabstop=4
 
" インデント時に使用されるスペースの数
set shiftwidth=2
 
" オートインデント
set autoindent

" pasteモード切り替え
set pastetoggle=<F11> 

" コマンド補完を強化
set wildmenu
 
" 入力中のコマンド表示
set showcmd
 
" 折り返さない
set nowrap
 
" プラグインを有効にする
filetype on
filetype indent on
filetype plugin on
 
" コード折りたたみ
"autocmd Filetype php,css,scss,c,cpp :set foldmethod=marker
"autocmd Filetype php,css,scss,c,cpp :set foldmarker={,}
 
" 文字列中のHTMLをハイライトする
let php_htmlInStrings=1
 
" 文字列中のSQLをハイライトする
let php_sql_query=1

" カラースキーマ
"colorscheme torte
 
" 挿入モードとノーマルモードでステータスラインの色変更
au InsertEnter * hi StatusLine guifg=White guibg=DarkRed gui=none ctermfg=White ctermbg=Red cterm=none
au InsertLeave * hi StatusLine guifg=While guibg=Blue gui=none ctermfg=White ctermbg=Blue cterm=none
 
"ノーマルモード時
nnoremap <C-l> zL
nnoremap <C-h> zH
nnoremap bg gT
 
"挿入モード時（emacsキーバインド）
inoremap <C-e> <End>
inoremap <C-a> <Home>
inoremap <C-u> <C-o>d0
inoremap <C-k> <C-o>d$
inoremap <C-d> <C-o>x
 
"挿入モード時（zen-coding）
nnoremap <C-y>m <Esc>:call zencoding#moveNextPrev(1)<CR>
inoremap <C-y>m <Esc>:call zencoding#moveNextPrev(1)<CR>

" おまけ　キーマップ
inoremap {} {}<LEFT>
inoremap [] []<LEFT>
inoremap () ()<LEFT>
inoremap '' ''<LEFT>
inoremap "" ""<LEFT>
inoremap <> <><LEFT>
inoremap ?? ??<LEFT>
inoremap jj <Esc>
 
"タイムスタンプ入力
inoremap <F10> <C-R>=strftime("%Y/%m/%d (%a) %H:%M")<CR>

" 改行時の自動コメント挿入禁止
autocmd Filetype * setlocal formatoptions-=ro

"<TAB>で補完
" {{{ Autocompletion using the TAB key
" This function determines, wether we are on the start of the line text (then tab indents) or
" if we want to try autocompletion
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<TAB>"
    else
        if pumvisible()
            return "\<C-N>"
        else
            return "\<C-N>\<C-P>"
        end
    endif
endfunction
" Remap the tab key to select action with InsertTabWrapper
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
" }}} Autocompletion using the TAB key


let g:user_zen_complete_tag = 1

