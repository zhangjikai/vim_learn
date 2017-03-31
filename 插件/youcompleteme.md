## YouCompleteMe
[地址](https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64)
### 安装
#### Vundle
```bash
Plugin 'Valloric/YouCompleteMe'
```
#### Cmake
```bash
sudo apt-get install build-essential cmake
```
#### c语言支持安装
```
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```

### 配置
#### vimrc配置
```bash
let g:ycm_global_ycm_extra_conf = '/home/zhangjikai/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
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
```

#### ycm_extra_conf.py 配置
##### 支持提示头文件
在 `flag=[*]` 里加入
```bash
'-isystem',
'/usr/include'
```
