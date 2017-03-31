## MiniBufExplorer
### 安装
```
Bundle 'fholgado/minibufexpl.vim'
```
[github地址](https://github.com/fholgado/minibufexpl.vim)
### 快捷键

* __Tab __ : 向前循环切换到每个buffer上
* __Shift - Tab__ : 向后循环切换到每个buffer上
* __Enter__ : 打开光标所在的buffer
* __d__ : 删除光标所在的buffer

### 命令
在一般模式下
```
// 打开当前buffer的下一个buffer
:bn

// 打开当强buffer的上一个buffer
:bp

// 打开编号为<num>(即每个buffer前面的数字)的buffer, 
:b<num> 
```

