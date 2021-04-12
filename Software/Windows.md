# Windows

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
