# Ubuntu

## 添加开机启动脚本

1. 将启动脚本移动到/etc/init.d目录下

   ```bash
   sudo mv ./buaa_login.sh /etc/init.d/
   ```

2. 设置脚本文件的权限

   ```bash
   sudo chmod 755 ./buaa_login.sh
   ```

3. 设置开机自动启动

   ```bash
   sudo update-rc.d ./buaa_login.sh defaults
   ```

4. 卸载开机自动启动

   ```bash
   sudo update-rc.d -f ./buaa_login.sh remove
   ```


## 安装GPU显卡驱动

1. 检查操作系统

   ```bash
   uname -a
   ```

2. 查看GPU显卡

   ```bash
   lspci | grep -i nvidia
   ```

3. 检测你的NVIDIA显卡型号和推荐的驱动安装型号

   ```bash
   ubuntu-drivers devices
   ```

4. 安装驱动

   ```bash
   sudo ubuntu-drivers autoinstall
   # 或者
   sudo apt-get install nvidia-driver-390
   ```

5. 重启系统

   ```bash
   sudo reboot
   ```

6. 检查是否安装成功

   ```bash
   nvidia-smi
   ```


## 多系统远程切换

开机默认进入ubuntu系统，若想远程切换其他系统，通过以下命令临时改变启动顺序，并重启

```bash
sudo grub-reboot 2
sudo reboot
```

## 双系统时间不一致

### 禁用Ubuntu的UTC

```bash
timedatectl set-local-rtc 1 --adjust-system-clock 
```

### 同步时间到硬件

```bash
sudo apt install ntpdate
sudo ntpdate time.windows.com
sudo hwclock --localtime --systohc
```

