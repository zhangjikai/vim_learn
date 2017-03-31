# markdown
## 安装
在`~/.vimrc`中加入:
```
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
```
[github地址](https://github.com/plasticboy/vim-markdown)

## 配置

```
" 设置使用markdown插件的类型以及不自动折叠代码
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown nofoldenable 
```