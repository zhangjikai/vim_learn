## Taglist

### 安装
```
Bundle 'taglist.vim'
```
[github地址](https://github.com/vim-scripts/taglist.vim)

### 配置
```
"只显示一个文件中的tag
let Tlist_Show_One_File=1

如果 taglist 窗口是最后一个窗口，则退出 vim
let Tlist_Exit_OnlyWindow=1 

"按tag名称排序
let Tlist_Sort_Type="name" 

"鼠标单击跳转到tag定义, 要开启鼠标功能
let Tlist_Use_SingleClick=1  

"把taglist窗口放在屏幕的右侧，缺省在左侧 
let Tlist_Use_Right_Window=1 

"显示taglist菜单
let Tlist_Show_Menu=1 

"映射taglist打开关闭的快捷键
map <silent> <F9> :TlistToggle<cr> 
```

### 使用
```
// 跳转到tag定义处
<enter>

// 在一个新窗口中跳转到tag的定义
o

// 预览tag的定义(光标还在taglist窗口内)
p

// 显示tag的原型(在vim窗口的最下方, 底行模式的地方)
<space> 空格

// 更新taglist列表
u

// 更改排序方式, 在按名字排序和按出现顺序排序间切换
s

// 删除taglist列表
d

// 放大和缩小taglist窗口
x

// 展开一个折叠
+

// 将tag折叠起来
-

// 展开所有的折叠
*

// 将所有的tag折叠起来
=

// 移动到前一个文件的taglist(如果允许显示多个文件的tag)
[[

// 移动到后一个文件的taglist
]]

// 关闭taglist窗口
q

// 打开/关闭帮助
<F1>


```