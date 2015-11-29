# vimrc配置

```
set number                  " 显示行号
set cursorline              " 突出显示当前行

"set cursorcolumn 			" 高亮显示当前行/列
set shiftwidth=4            " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4               " 设定 tab 长度为 4
set autochdir               " 自动切换当前目录为当前文件所在的目录

"color solarized
set ruler  					" 显示光标当前位置
set nowrap 					" 禁止折行
syntax enable 				" 开启语法高亮功能
syntax on 					" 允许用指定语法高亮配色方案替换默认方案
"colorscheme  anderson  " 设定配色方案
set smartindent             " 开启新行时使用智能自动缩进
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)
"set foldenable              " 开始折叠
"set foldmethod=syntax       " 设置语法折叠

"设置terminal 使用gui颜色
"" IMPORTANT: Uncomment one of the following lines to force
" using 256 colors (or 88 colors) if your terminal supports it,
" " but does not automatically use 256 colors by default.
 set t_Co=256
" "set t_Co=88
 let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
 colorscheme spring
 hi CursorLine   cterm=NONE ctermbg=lightgray ctermfg=black  guifg=white

"自动保存
let g:auto_save = 1
let g:auto_save_no_updatetime = 1 
let g:auto_save_in_insert_mode = 1
```
