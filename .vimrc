" カラーの有効化
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
set shiftwidth=4
 
" オートインデント
set autoindent

" pasteモード切り替え
set pastetoggle=<F11> 

" コマンド補完を強化
set wildmenu
 
" 入力中のコマンド表示
set showcmd
 
" twigをハイライトする
au BufRead,BufNewFile *.twig set filetype=html
"au BufRead,BufNewFile *.twig :set syntax=htmldjango 
 
" 文字列中のHTMLをハイライトする
let php_htmlInStrings=1
 
" 文字列中のSQLをハイライトする
let php_sql_query=1

" カラースキーマ
" /usr/share/vim/vim72/colorsの中に色々あるのでお好きに設定してください（自分は、torne派です）
" colorscheme torte
 
" 挿入モードとノーマルモードでステータスラインの色変更
" ノーマルモードは青色
" 挿入モードは赤色
au InsertEnter * hi StatusLine guifg=White guibg=DarkRed gui=none ctermfg=White ctermbg=Red cterm=none
au InsertLeave * hi StatusLine guifg=While guibg=Blue gui=none ctermfg=White ctermbg=Blue cterm=none
 
" ノーマルモード時
nnoremap bg gT
 
