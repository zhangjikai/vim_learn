## ctags
### 配置
```
" 配置Ctrl + F12为生产ctags的快捷键
map <C-F12> :!ctags -R .<CR>  
```

### 使用
```
// 跳转到变量或函数定义处
Ctrl + ]

// 返回上一个地方
Ctrl + t

// 跳转到局部变量的定义处(但是好像在不同的函数内有相当的局部变量声明时, 都会跳到第一个)
gd 或者 [ + <Tab>
```
### 查询
```
// 查看可以支持的语法元素
ctags --list-kinds

// 查看支持的c语法元素
ctags --list-kinds=c

// 查看ctags支持的语言
ctags --list-languages

// 查看每种语言对应的扩展名
ctags --list-maps

// 使生成的标签支持支持局部变量, 但是局部变量只能跳转到第一个声明的地方
ctags --c-kinds=+lpx -R .
```