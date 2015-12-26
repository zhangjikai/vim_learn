## Vim-multiple-cursors(vim多重光标选取插件)

### 安装
使用vundle安装, 在.vimrc中加入
```
Plugin 'terryma/vim-multiple-cursors'
```
这里是[github地址](https://github.com/terryma/vim-multiple-cursors)
### 使用

![图片](https://github.com/terryma/vim-multiple-cursors/raw/master/assets/example1.gif?raw=true)  
上图的按键顺序: `2Gfp<C-n><C-n><C-n>cname`
1. `2G` - 跳转到第2行
2. `fp` - 移动光标到字符p
3. `<C-n>` - 即`Ctrl+n`, 选择当前单词`poorly_named_var`
4. `<C-n><C-n>` - 每按一次`<C-n>`向下选取一个同样的单词, 这里选择下面的两个`pooly_named_var`
5. `c` - 按c开始修改
6. `name` - 输入要修改的内容, 这里是`name`
7. 按`<Esc>`回到正常的模式