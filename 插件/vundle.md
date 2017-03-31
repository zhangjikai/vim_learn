## Vundle
### 安装
vundle是vim的一个插件管理器,使用它可以方便的安装管理vim的各种插件,下面是它的[github地址](https://github.com/VundleVim/Vundle.vim),下面是安装流程(具体以github上的说明为主):
* 下载vundle

```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
*  配置文件  
将下面配置copy到~/.vimrc文件中

```
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
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
```
* 安装插件  
打开vim, 输入:PluginInstall

### 命令
* __:BundleList__ -列举出列表中(.vimrc中)配置的所有插件
* __:BundleInstall__ -安装列表中全部插件
* __:BundleInstall!__ -更新列表中全部插件
* __:BundleSearch foo__ -查找foo插件
* __:BundleSearch! foo__ -刷新foo插件缓存
* __:BundleClean__ -清除列表中没有的插件
* __:BundleClean!__ -清除列表中没有的插件


