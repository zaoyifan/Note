# C++

## Make

### 参考资料

- [Makefile教程：Makefile文件编写1天入门](http://c.biancheng.net/makefile/)

## CMake

### Linux终端环境配置

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

### 语法规则

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


### 参考资料

- [cmake手册详解](https://www.cnblogs.com/549294286/p/6583189.html)
