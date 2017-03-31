# 执行shell命令

### 执行单条shell命令

```bash
// 在命令前面加个!号, 执行万命令后会提示返回vim
:! {command}

// 执行命令,并读取其输出(是将命令的输出写入到当前的打开文件中)
:r !{command}

// 执行命令, 并将命令的输出传送至vim命令模式输入(即在命令行那里输出)
:w !{command}
```
### 打开shell窗口

```bash
//在vim中输入,就会挂起vim, 进入到shell执行框
:shell

//执行完shell命令,使用exit返回到vim
exit

```