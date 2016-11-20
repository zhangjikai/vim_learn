# WinManager

窗口管理器

## 安装

```bash
Plugin 'vim-scripts/winmanager'
```

## 配置

```
let g:winManagerWindowLayout='FileExplorer'
nmap wm :WMToggle<cr>


" 配置Ctrl + 方向键在窗口之间切换
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>
```
