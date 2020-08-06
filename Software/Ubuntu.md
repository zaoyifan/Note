# Ubuntu

# Ubuntu下添加开机启动脚本

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

   