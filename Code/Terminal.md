# Terminal

## Shell/Bash

### 设置代理

```bash
# 设置代理
export http_proxy=http://127.0.0.1:1080
export https_proxy=https://127.0.0.1:1080
export http_proxy=socks5://127.0.0.1:1080
export https_proxy=socks5://127.0.0.1:1080
# 取消代理
unset http_proxy
unset https_proxy
```

### 相关技巧

```bash
# 快速删除包含大量文件的文件夹（不要忘记文件夹后的“/”）
rsync --delete-before -d /tmp/empty/ /the/folder/you/want/delete/
# 快速删除大文件
rsync -a --delete-before --progress --stats /tmp/empty.txt /the/data/you/want/delete.txt
```

### 显卡相关信息查询

```bash
# 查看显卡型号
lspci | grep -i nvidia
# 查看NVDIA驱动版本
cat /proc/driver/nvidia/version
```

根据生成的十六进制数在[The PCI ID Repositor](http://pci-ids.ucw.cz/mods/PC/10de?action=help?help=pci)网站查询显卡型号。

## HPC

### module命令

```bash
# 查看可用模块
module avail
# 载入模块
module load anaconda3
# 查看载入模块
module list
# 卸载模块
module unload anaconda3
```

### slurm命令

```bash
# 申请空间排队
salloc -p gpu --gres=gpu:2 bash
# 查看申请队列
squeue
# 连接gpu节点
ssh gpu-01
```

### 参考资料

- [北京大学高性能计算使用指南](http://hpc.pku.edu.cn/_book/index.html)
- [北京大学国际数学中心微型工作站使用指南](http://bicmr.pku.edu.cn/~wenzw/pages/index.html)

## Cmd/Powershell

### 添加环境变量

```powershell
set PATH=%PATH%;C:\Anaconda3 # %PATH%和环境变量路径相对位置可以互换，当前路径为%cd%
```

### 设置代理

```powershell
# 设置代理
set http_proxy=http://127.0.0.1:1080
set https_proxy=https://127.0.0.1:1080
set http_proxy=socks5://127.0.0.1:1080
set https_proxy=socks5://127.0.0.1:1080
# 取消代理
set http_proxy=
set https_proxy=
```

### 获取当前路径文件列表

```powershell
# 文件路径
DIR /S/B >FILELIST.TXT
# 文件名称
DIR /B >FILELIST.TXT
```

## Git for Windows

### 设置代理

```bash
# 设置代理
git config --global http.proxy "http://127.0.0.1:1080"
git config --global https.proxy "https://127.0.0.1:1080"
git config --global http.proxy "socks5://127.0.0.1:1080"
git config --global https.proxy "socks5://127.0.0.1:1080"
# 取消代理
git config --global --unset http.proxy
git config --global --unset https.proxy
```
