## vimrc文件
```vimrc
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
"自动补全
Bundle 'Raimondi/delimitMate'
filetype plugin indent on

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

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

"markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'terryma/vim-multiple-cursors'


set number                  " 显示行号
set cursorline              " 突出显示当前行


"set guicursor=i:block-iCursor-blinkon0,v:block-vCursor
"set cursorcolumn 			" 高亮显示当前行/列
set shiftwidth=4            " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4               " 设定 tab 长度为 4
set expandtab               " 加上这句防止代码复制到别的地时tab变为8个空格   
set autochdir               " 自动切换当前目录为当前文件所在的目录

"color solarized
set ruler  					" 显示光标当前位置
set nowrap 					" 禁止折行
syntax enable 				" 开启语法高亮功能
syntax on 					" 允许用指定语法高亮配色方案替换默认方案
"colorscheme  anderson  " 设定配色方案
"colorscheme  spring 	" 设定配色方案
"color spring
set smartindent             " 开启新行时使用智能自动缩进
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)
"set foldenable              " 开始折叠
"set foldmethod=syntax       " 设置语法折叠

set mouse=a

"设置补全文件名
set wildmode=list:longest

"hi preproc		guifg=blue		ctermfg=blue


" MiniBufExplorer     多个文件切换 可使用鼠标双击相应文件名进行切换
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1

map <F7> 20zl " Scroll 20 characters to the right
map <F8> 20zh " Scroll 20 characters to the left

"au VimEnter * if line('$') > &lines | set go+=r | else | set go-=r | endif
"au VimResized * if line('$') > &lines | set go+=r | else | set go-=r | endif

" 配置多语言环境
if has("multi_byte")
    " UTF-8 编码
    set encoding=utf-8
    set termencoding=utf-8
    set formatoptions+=mM
    set fencs=utf-8,gbk
    if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
        set ambiwidth=double
    endif
    if has("win32")
        source $VIMRUNTIME/delmenu.vim
        source $VIMRUNTIME/menu.vim
        language messages zh_CN.utf-8
    endif
else
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

"配置taglist
let Tlist_Show_One_File=1   "只显示一个文件中的tag
let Tlist_Exit_OnlyWindow=1 
let Tlist_Sort_Type="name" "按tag名称排序
let Tlist_Use_SingleClick=1  "单击
let Tlist_Use_Right_Window=1 "把taglist窗口放在屏幕的右侧，缺省在左侧 
let Tlist_Show_Menu=1 "显示taglist菜单
map <silent> <F9> :TlistToggle<cr> 


"配置ctags快捷键
map <C-F12> :!ctags --c-kinds=+lpx -R .<CR>  

"配置WinManager
let g:winManagerWindowLayout='FileExplorer'
nmap wm :WMToggle<cr>

"设置cscope
:set cscopequickfix=s-,c-,d-,i-,t-,e-

"设置MiniBufExplorer
let g:miniBufExplMapWindowNavArrows = 1

"头文件互换
nnoremap <silent> <F12> :A<CR>

let g:ycm_global_ycm_extra_conf = '/home/zhangjikai/.vim/bundle/third_party/ycmd/cpp/ycm/ycm.c.py'
let g:ycm_semantic_triggers = {}
let g:ycm_semantic_triggers.c = ['->', '.', '(', '[', '&']
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_min_num_of_chars_for_completion=3
let g:ycm_seed_identifiers_with_syntax=1


" YouCompleteMe 功能  
" 补全功能在注释中同样有效  
let g:ycm_complete_in_comments=0 
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示  
let g:ycm_confirm_extra_conf=0
" 开启 YCM 基于标签引擎  
let g:ycm_collect_identifiers_from_tags_files=1  
" 引入 C++ 标准库tags，这个没有也没关系，只要.ycm_extra_conf.py文件中指定了正确的标准库路径  
set tags+=/data/misc/software/misc./vim/stdcpp.tags  
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键  
inoremap <leader>; <C-x><C-o>  
" 补全内容不以分割子窗口形式出现，只显示补全列表  
set completeopt-=preview  
" 从第一个键入字符就开始罗列匹配项  
let g:ycm_min_num_of_chars_for_completion=1 
" 禁止缓存匹配项，每次都重新生成匹配项  
let g:ycm_cache_omnifunc=0  
" 语法关键字补全              
let g:ycm_seed_identifiers_with_syntax=1  
" 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;  
let g:ycm_key_invoke_completion = '<M-;>'  
" 设置转到定义处的快捷键为ALT + G，这个功能非常赞  
nmap <M-g> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR>  
" 设置按哪个键上屏
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<Enter>']

"括号补全


"取消自动检查错误

let g:syntastic_c_checkers = []
let g:syntastic_disabled_filetypes = ['c']
let g:syntastic_ignore_files = ['*.h','*.c']

"自动保存
let g:auto_save = 1
let g:auto_save_no_updatetime = 0
let g:auto_save_in_insert_mode = 0

"配置gvim
if has("gui_running") 
set guifont=YaHei\ Consolas\ Hybrid\ 12 
endif


" Go to last file(s) if invoked without arguments.
"autocmd VimLeave * nested if (!isdirectory($HOME . "/.vim")) |
"   \ call mkdir($HOME . "/.vim") |
"   \ endif |
"   \ execute "mksession! " . $HOME . "/.vim/Session.vim"

"autocmd VimEnter * nested if argc() == 0 && filereadable($HOME . "/.vim/Session.vim") |
"   \ execute "source " . $HOME . "/.vim/Session.vim"

"设置terminal 使用gui颜色
" IMPORTANT: Uncomment one of the following lines to force
" using 256 colors (or 88 colors) if your terminal supports it,
" but does not automatically use 256 colors by default.
set t_Co=256
"set t_Co=88
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme spring
hi CursorLine   cterm=NONE ctermbg=lightgray ctermfg=black  guifg=white

au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown nofoldenable

"设置粘贴模式切换,在粘贴模式下,粘贴时不会自动缩进
set pastetoggle=<F3>
set clipboard=unnamed

"正常模式下插入空行 to/tO
nmap <silent> to :call append('.', '')<CR>j
nmap <silent> tO :call append(line('.')-1, '')<CR>k

set foldmethod=syntax
set nofoldenable
```
