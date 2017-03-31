## Vimrc配置

<!-- toc -->

### 设置折叠
#### 配置  
```
" 基于缩进
"set foldmethod=indent
" 基于语法
set foldmethod=syntax
" 启动vim时关闭折叠代码
set nofoldernable
" 使用空格来开关折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
```

#### 快捷键
* `zc`: 关闭折叠
* `zo`: 打开折叠
* `za`: 打开或者关闭当前折叠
* `zM`: 关闭所有折叠
* `zR`: 打开所有折叠

### 正常模式下插入空格
#### 配置
```
nmap <silent> to :call append('.', '')<CR>j
nmap <silent> tO :call append(line('.')-1, '')<CR>k
```
#### 快捷键
使用 `to` 或者 `tO` 组合键