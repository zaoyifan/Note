# Library

## GDAL

### Linux平台GDAL编译

1. 下载相关库

    - [gdal](http://trac.osgeo.org/gdal/wiki/DownloadSource)
    - [geos](http://trac.osgeo.org/geos)
    - [proj](http://download.osgeo.org/proj/)

2. 安装proj

    ```bash
    cd /root/buaa/BUAA_Target/GDAL/proj-4.9.3
    chmod -R 777
    mkdir build
    ./configure -prefix=/root/buaa/BUAA_Target/GDAL/proj-4.9.3/build
    make
    make install
    ```

3. 安装geos

    ```bash
    cd /root/buaa/BUAA_Target/GDAL/geos-3.5.1
    chmod -R 777
    mkdir build
    ./configure -prefix=/root/buaa/BUAA_Target/GDAL/geos-3.5.1/build --enable-python
    make
    make install
    ```

4. 安装gdal

    ```bash
    cd /root/buaa/BUAA_Target/GDAL/gdal-2.1.2
    chmod -R 777
    mkdir build
    # 注意这里没有指定编译安装的位置，所以会默认安装在/usr/local/目录下
    ./configure --with-python --with-geos=/root/buaa/BUAA_Target/GDAL/geos-3.5.1/build/bin/geos-config --with-proj=/root/buaa/BUAA_Target/GDAL/proj-4.9.3/build
    make
    make install
    ```

5. 配置Python

    ```bash
    cd swig/python
    python setup.py build
    python setup.py install
    ```

6. 测试gdal

    ```python
    import gdal
    ```

## OpenCV

### Linux平台编译与环境配置

```bash
# 1. 下载官方Sources包，解压
unzip opencv-3.3.0.zip
# 2. 创建build文件夹并进入
cd opencv-3.3.0
mkdir build
cd build
# 3. 运行cmake，OpenCV4默认不生成.pc文件，OPENCV_GENERATE_PKGCONFIG=ON才会生成，DCMAKE_INSTALL_PREFIX和build文件夹不同，注释掉Anaconda环境变量，会和OpenCV编译冲突
cmake -DCMAKE_BUILD_TYPE=Release \
-DOPENCV_GENERATE_PKGCONFIG=ON \
-DCMAKE_INSTALL_PREFIX=/usr/local ..
# 4. 编译与安装
make -j8
make install
# 5. 环境配置
export PKG_CONFIG_PATH=/usr/local/opencv3.4.2/lib/pkgconfig:$PKG_CONFIG_PATH
export LD_LIBRARY_PATH=/usr/local/opencv3.4.2/lib:$LD_LIBRARY_PATH
# 6. 检测是否安装成功
pkg-config --cflags opencv
pkg-config --libs opencv
# 7. 卸载
make uinstall
```
