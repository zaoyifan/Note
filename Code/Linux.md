# Shell/Bash

## 设置代理

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

## 相关技巧

```bash
# 快速删除包含大量文件的文件夹（不要忘记文件夹后的“/”）
rsync --delete-before -d /tmp/empty/ /the/folder/you/want/delete/
# 快速删除大文件
rsync -a --delete-before --progress --stats /tmp/empty.txt /the/data/you/want/delete.txt
```

# CMake

## Linux终端环境配置

```bash
# 1. 下载CMake：https://cmake.org/files/
# 2. 解压下载的CMake，并放在合理的位置
tar -zvxf cmake-3.14.3-Linux-x86_64.tar.gz
# 3. 配置环境变量
export CMAKE_HOME=/home/quadmin/Desktop/cmake
export PATH=${CMAKE_HOME}/bin:$PATH
# 4. 测试CMake环境
cmake -version
```

## 语法规则

```cmake
# 指定需要最小的cmake版本号
cmake_minimum_required(VERSION 3.8)

# 设置项目名称
project(Darknet VERSION ${Darknet_VERSION})

# 设置变量的值
set(Darknet_MAJOR_VERSION 0)
# 设置缓存条目，类型可以是BOOL、FILEPATH、PATH、STRING、INTERNAL，最后使用FORCE覆盖现有项
set(USE_INTEGRATED_LIBS "TRUE" CACHE BOOL "Use libs distributed with this repo")
# 设置多个变量，变量之间分号隔开
set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake/Modules/" ${CMAKE_MODULE_PATH})
# 设置环境变量
set(ENV{VCPKG_ROOT} "")

# 设置属性选项
set_property(CACHE CUDA_ARCHITECTURES PROPERTY STRINGS "Auto" "Common" "All" "Kepler Maxwell Kepler+Tegra Maxwell+Tegra Pascal" "3.0 7.5")

# 选项开关，可以在cmake外部控制
option(ENABLE_OPENCV "Enable OpenCV integration" ON)
# 得到详细的出错信息
option(CMAKE_VERBOSE_MAKEFILE "Create verbose makefile" ON)
option(CUDA_VERBOSE_BUILD "Create verbose CUDA build" ON)

# 输出信息，可以是STASUS、WARNING、FATAL_ERROR
message(STATUS "VCPKG found: $ENV{VCPKG_ROOT}")

# 启用语言，可以是C、CXX、CUDA等
enable_language(CXX)

# 导入cmake库
include(CheckLanguage)

# 检查CUDA是否可用，若可用，CMAKE_CUDA_COMPILER为真
check_language(CUDA)

# 寻找依赖包，REQUIRED表示找不到停掉整个cmake
find_package(CUDA REQUIRED)

# 字符串操作，替换/O2为/Ox
string(REGEX REPLACE "/O2" "/Ox" CMAKE_CXX_FLAGS_RELEASE ${CMAKE_CXX_FLAGS_RELEASE})

# 将第一个文件内容全部复制到第二个文件
configure_file(
  "${CMAKE_CURRENT_LIST_DIR}/src/version.h.in"
  "${CMAKE_CURRENT_LIST_DIR}/src/version.h"
)

# 获取正则表达式匹配的所有文件路径
file(GLOB headers "${CMAKE_CURRENT_LIST_DIR}/src/*.h")
# 推断出指定文件相对目录的路径
file(RELATIVE_PATH REL_INCLUDE_DIR "${INSTALL_CMAKE_DIR}" "${INSTALL_INCLUDE_DIR}")

# 列表中添加新的元素，可以为APPEND、REMOVE_ITEM等
list(APPEND headers
  ${CMAKE_CURRENT_LIST_DIR}/include/darknet.h
)

# 设置源文件属性
set_source_files_properties(${sources} PROPERTIES LANGUAGE CXX)

# 将源文件链接到工程中去
add_library(dark ${CMAKE_CURRENT_LIST_DIR}/include/yolo_v2_class.hpp ${CMAKE_CURRENT_LIST_DIR}/src/yolo_v2_class.cpp ${sources} ${headers} ${cuda_sources})

# 设置目标文件相关属性
set_target_properties(dark PROPERTIES POSITION_INDEPENDENT_CODE ON)
# 设置源文件相关属性
set_source_files_properties(${CMAKE_CURRENT_LIST_DIR}/src/darknet.c PROPERTIES LANGUAGE CXX)
# 为目标增加编译定义
target_compile_definitions(dark PRIVATE LIB_EXPORTS=1)

# 可执行文件目标
add_executable(uselib_track ${CMAKE_CURRENT_LIST_DIR}/src/yolo_console_dll.cpp)

# 为目标添加头文件目录
target_include_directories(darknet PUBLIC $<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}/include> $<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}/src> $<INSTALL_INTERFACE:${DARKNET_INSTALL_INCLUDE_DIR}> $<BUILD_INTERFACE:${Stb_INCLUDE_DIR}>)
# 链接相关库
target_link_libraries(uselib PRIVATE dark)

# 安装静态库ARCHIVE、动态库LIBRARY、可执行二进制文件RUNTIME，EXPORT后为安装文件名
install(TARGETS dark EXPORT DarknetTargets
  RUNTIME DESTINATION "${INSTALL_BIN_DIR}"
  LIBRARY DESTINATION "${INSTALL_LIB_DIR}"
  ARCHIVE DESTINATION "${INSTALL_LIB_DIR}"
  PUBLIC_HEADER DESTINATION "${INSTALL_INCLUDE_DIR}"
  COMPONENT dev
)

# cmake模块所在路径
CMAKE_MODULE_PATH
# 当CMAKE_INSTALL_PREFIX为初始化默认值时，该变量为TRUE
CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT
# 定义安装路径
CMAKE_INSTALL_PREFIX
# 当前正在处理的ListFile的完整路径
CMAKE_CURRENT_LIST_DIR
# cmake完整版本号
CMAKE_VERSION
# 可以启动本地构建系统的工具
CMAKE_MAKE_PROGRAM
# debug生成后缀
CMAKE_DEBUG_POSTFIX
# 当编译器为GNU时为真
CMAKE_COMPILER_IS_GNUCC
# 编译器识别字符串
CMAKE_CXX_COMPILER_ID
# 编译器编译选项
CMAKE_CXX_FLAGS
CMAKE_CXX_FLAGS_DEBUG
CMAKE_CXX_FLAGS_RELEASE
# 项目文件路径
PROJECT_SOURCE_DIR
# 执行cmake路径
PROJECT_BINARY_DIR
```


## 参考资料

- [cmake手册详解](https://www.cnblogs.com/549294286/p/6583189.html)

# Make

## 参考资料

- [Makefile教程：Makefile文件编写1天入门](http://c.biancheng.net/makefile/)

# GPU

## 显卡相关信息查询

```bash
# 查看显卡型号
lspci | grep -i nvidia
# 查看NVDIA驱动版本
cat /proc/driver/nvidia/version
```
根据生成的十六进制数在[The PCI ID Repositor](http://pci-ids.ucw.cz/mods/PC/10de?action=help?help=pci)网站查询显卡型号。

# HPC

## module命令

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

## slurm命令

```bash
# 申请空间排队
salloc -p gpu --gres=gpu:2 bash
# 查看申请队列
squeue
# 连接gpu节点
ssh gpu-01
```

## 参考资料

- [北京大学高性能计算使用指南](http://hpc.pku.edu.cn/_book/index.html)
- [北京大学国际数学中心微型工作站使用指南](http://bicmr.pku.edu.cn/~wenzw/pages/index.html)

# GDAL

## Linux平台GDAL编译

### 1. 下载相关库

- [gdal](http://trac.osgeo.org/gdal/wiki/DownloadSource)
- [geos](http://trac.osgeo.org/geos)
- [proj](http://download.osgeo.org/proj/)

### 2. 安装proj

```shell
cd /root/buaa/BUAA_Target/GDAL/proj-4.9.3
chmod -R 777
mkdir build
./configure -prefix=/root/buaa/BUAA_Target/GDAL/proj-4.9.3/build
make
make install
```

### 3. 安装geos

```shell
cd /root/buaa/BUAA_Target/GDAL/geos-3.5.1
chmod -R 777
mkdir build
./configure -prefix=/root/buaa/BUAA_Target/GDAL/geos-3.5.1/build --enable-python
make
make install
```

### 4. 安装gdal

```shell
cd /root/buaa/BUAA_Target/GDAL/gdal-2.1.2
chmod -R 777
mkdir build
# 注意这里没有指定编译安装的位置，所以会默认安装在/usr/local/目录下
./configure --with-python --with-geos=/root/buaa/BUAA_Target/GDAL/geos-3.5.1/build/bin/geos-config --with-proj=/root/buaa/BUAA_Target/GDAL/proj-4.9.3/build
make
make install
```

### 5. 配置Python

```shell
cd swig/python
python setup.py build
python setup.py install
```

### 6. 测试gdal

```python
import gdal
```

# OpenCV

## Linux平台编译与环境配置

```bash
# 1. 下载官方Sources包，解压
unzip opencv-3.3.0.zip
# 2. 创建build文件夹并进入
cd opencv-3.3.0
mkdir build
cd build
# 3. 运行cmake，OpenCV4默认不生成.pc文件，OPENCV_GENERATE_PKGCONFIG=ON才会生成，DCMAKE_INSTALL_PREFIX和build文件夹不同
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

