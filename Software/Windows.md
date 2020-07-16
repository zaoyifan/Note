# Windows

## Windows 10 LTSC 安装 Linux 子系统

### 下载

[点击这里](https://docs.microsoft.com/en-us/windows/wsl/install-manual#downloading-distros)下载你所需的子系统版本

### 启用

打开 `Windows PowerShell` 输入

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

或者进入控制面板-程序-启用或关闭 Windows 功能勾选 `适用于 Linux 的 Windows 子系统`，完成后重启计算机

### 安装

打开 `Windows PowerShell` 输入

```powershell
Add-AppxPackage .\Ubuntu_2004.2020.424.0_x64.appx
```

### 运行

打开开始菜单中的Ubuntu 20.04 LTS