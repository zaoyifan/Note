# Windows

## 装机

### 办公

- [Microsoft Office](https://www.microsoft.com/zh-cn/microsoft-365/)
- [Microsoft Visio](https://www.microsoft.com/zh-cn/microsoft-365/visio/flowchart-software)
- [Mathpix Snipping Tool](https://mathpix.com/)
- [MathType](https://www.mathtype.cn/)
- [Typora](https://www.typora.io/)
- [阅书PDF阅读器](http://yueshupdf.cqttech.com/)

### 编程

- [Anaconda](https://www.anaconda.com/products/individual)
- [Visual Studio](https://visualstudio.microsoft.com/zh-hans/vs/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Git for Windows](https://gitforwindows.org/)
- [Jetbrains Toolbox](https://www.jetbrains.com/zh-cn/toolbox-app/)
- [Matlab](https://www.mathworks.com/products/matlab.html)
- [Node.js](https://nodejs.org/en/)
- [Nvidia CUDA Toolkit](https://developer.nvidia.com/zh-cn/cuda-downloads)

### 影像

- [PotPlayer](https://potplayer.org/)
- [ENVI](http://envi.geoscene.cn/)
- [Photoshop](https://www.adobe.com/cn/products/photoshop.html)
- [Honeyview](https://www.bandisoft.com/)
- [FastStone Capture](https://www.faststone.org/FSCaptureDetail.htm)

### 远程

- [MobaXterm](https://mobaxterm.mobatek.net/)
- [ToDesk](https://www.todesk.com/download.html)
- [向日葵](https://sunlogin.oray.com/download/)
- [腾讯会议](https://cloud.tencent.com/act/event/tencentmeeting_free)
- [GoHTTP](http://gotohttp.com/goto/download.12x)

### 学术

- [TeX Live](http://tug.org/texlive/)
- [TeXstudio](http://texstudio.sourceforge.net/)
- [Zotero](https://www.zotero.org/)

### 网盘

- [坚果云](https://www.jianguoyun.com/s/downloads)
- [百度网盘](https://pan.baidu.com/download)

### 安全

- [火绒](https://www.huorong.cn/)

### 下载

- [迅雷](https://x.xunlei.com/)
- [uTorrent](https://www.utorrent.com/intl/zh/)

### 浏览器

- [Google Chrome](https://www.google.cn/intl/zh-CN/chrome/)

### 压缩

- [Bandizip](http://www.bandisoft.com/)

### 社交

- [TIM](https://office.qq.com/download.html)
- [微信](https://weixin.qq.com/)
- [网易云音乐](https://music.163.com/#/download)

### 其他

- [DiskInternals](https://www.diskinternals.com/linux-reader/screenshots/)
- [Listary](https://www.listary.com/)
- [QTranslate](https://quest-app.appspot.com/download)
- [桌面日历](http://chs.desktopcal.com/chs/)
- [12306Bypass](https://www.bypass.cn/)

## WSL

1. 下载

   [点击这里](https://docs.microsoft.com/en-us/windows/wsl/install-manual#downloading-distros)下载你所需的子系统版本

2. 启用

   打开 `Windows PowerShell` 输入

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

​		或者进入控制面板-程序-启用或关闭 Windows 功能勾选 `适用于 Linux 的 Windows 子系统`，完成后重启计算机

### 环境

打开 `Windows PowerShell` 执行

```powershell
$userenv = [System.Environment]::GetEnvironmentVariable("Path", "User")
[System.Environment]::SetEnvironmentVariable("PATH", $userenv + "D:\Ubuntu", "User")
```

### 安装

将下载的appx文件的后缀改为zip，然后解压到想要安装的位置，以管理员身份运行ubuntu2004.exe，它会自动在此目录下安装好ubuntu，如D:\Ubuntu

### 运行

在 `cmd` 中执行 `bash` 或者双击 `.exe` 程序运行