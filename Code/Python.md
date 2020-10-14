# Python

## Conda

### 虚拟环境

```powershell
# 查看虚拟环境
conda env list
# 创建虚拟环境
conda create -n environment_name python=X.X
# 激活虚拟环境，Linux需要在前面加source
activate your_env_name
# 关闭虚拟环境，Linux需要在前面加source
deactivate your_env_name
# 删除虚拟环境，Linux下为conda env remove -n your_env_name
conda remove --name your_env_name --all
# 指定目录虚拟环境操作
conda create --prefix=D:\python36\py36 python=3.6 # 创建
activate D:\python36\py36 # 激活
deactivate # 退出
conda remove --prefix=D:\python36\py36 --all # 删除
```

### 安装库

```bash
conda install -c menpo opencv
```

## Pip

### 国内源

 ```
阿里云： http://mirrors.aliyun.com/pypi/simple/
中国科技大学： https://pypi.mirrors.ustc.edu.cn/simple/ 
豆瓣(douban)： http://pypi.douban.com/simple/ 
清华大学： https://pypi.tuna.tsinghua.edu.cn/simple/ 
中国科学技术大学： http://pypi.mirrors.ustc.edu.cn/simple/
 ```

## Pyinstaller

### Python程序打包

```powershell
pyinstaller deploy.py # 可通过pyinstalller -h查看其他选项，生成的可执行程序在dist文件夹下
```

### 打包过程出现的相关问题

1. 打包tensorflow存在的问题

   参考博客：[ubuntu下利用pyinstaller将tensorflow进行打包](https://blog.csdn.net/mr_health/article/details/89684301)

2. RecursionError或UnicodeDecodeError

   参考博客：[pyinstaller打包报错： RecursionError: maximum recursion depth exceeded，UnicodeDecodeError](https://blog.csdn.net/sinat_32651363/article/details/82841026)

## Visdom

### 初次运行

初次运行python -m visdom.server，会卡在Downloading scripts, this may take a little while

1. 打开site-packages\visdom下sever.py文件
2. 注释掉注释掉1917行download_scripts()
3. 替换site-packages\visdom下的static文件夹
4. 执行python -m visdom.server

### 远程访问

1. 连接ssh时，将服务器的8097端口重定向到本地8097端口

   ```bash
   ssh -L 8097:127.0.0.1:8097 username@remote_server_ip
   ```

2. 在服务器上正常启动visdom

   ```bash
   python -m visdom.server
   ```

3. 在本地浏览器中输入地址：127.0.0.1:8097

4. 在python脚本中创建visdom连接时，服务器与端口设置需要与visdom运行的一致；若服务器端存在代理，则创建visdom连接容易出现错误：failed CONNECT via proxy status: 403，需要取消相应地址的代理。

   ```bash
   export no_proxy=loacalhost
   ```

## TensorFlow

### Q&A

1. 程序在训练过程中突然中断或者报关于CUDA的错误，如下所示

   ```
   Error polling for event status: failed to query event: CUDA_ERROR_LAUNCH_FAILED
   Unexpected event status: 1
   Process finished with exit code -1073741819 (0xC0000005)
   ```

   出现这种情况一般是CUDA或者NVIDIA驱动的版本不一致导致的，在命令行nvidia-smi，可以发现NVIDIA驱动经过最近升级变为了451.48，其对应CUDA版本为11.0，升级CUDA问题得到解决。

## mmdetection

### windows 10环境中的配置方法（不可用）

1. 安装VS2019，工作负载勾选使用C++的桌面开发，配置编译环境

2. 安装CUDA 10.2.89，自定义选项需选中Visual Studio Integration

3. 安装CUDNN 7.6.5，注意VS、CUDA与CUDNN版本需要对应，同时取决于mmdetection的版本

4. 安装Anaconda、PyCharm、GitBash，然后搭建Python虚拟环境

   ```powershell
   conda create -n mmdetection python=3.7
   activate mmdetection
   conda install pytorch torchvision cudatoolkit -c pytorch # 注意与系统CUDA版本一致，PyTorch版本取决于CUDA以及mmdetection的版本
   # 安装Cython
   pip install Cython
   # 安装pycocotools
   pip install git+https://github.com/philferriere/cocoapi.git#subdirectory=PythonAPI
   # 下载mmdetection
   git clone https://github.com/open-mmlab/mmdetection.git
   cd mmdetection
   # 安装依赖包
   pip install -r requirements.txt
   # 若上一步未成功安装mmcv，则手动安装mmcv（pip install mmcv）
   git clone https://github.com/open-mmlab/mmcv.git
   cd mmcv
   pip install -e .
   ```

5. 修改编译文件

   ```python
   # ~Lib\site-packages\torch\utils\cpp_extension.py
   match = re.search(r'(\d+)\.(\d+)\.(\d+)', compiler_info.decode('utf8', 'ignore').strip())
   # ~\Lib\site-packages\mmcv\utils\config.py
   with open(filename, 'r', encoding='utf-8') as f:
   # 修改setup.py文件中extra_compile_args相关代码
   extra_compile_args = {'cxx': ['-DMS_WIN64', '-MD']}
   ```

6. 激活VS环境

   ```powershell
   # VS2019
   call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"
   # VS2017
   call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat"
   ```

7. 编译安装mmdetection

   ```powershell
   python setup.py build_ext --inplace
   python setup.py install develop
   ```

## Q&A

### 启动Python出现Failed calling sys.\_\_interactivehook\_\_

1. 进入site-packages\pyreadline\lineeditor目录
2. 打开history.py文件
3. 第82行修改为for line in open(filename, 'r', encoding='utf-8'):
4. 重新启动Python

### PyTorch 与 TensorboardX 的版本兼容性问题

1. PyTorch 1.1.0及以前的版本，最好使用tensorboardX 1.7及以前，因为在1.8更新了add_graph方法导致其可能无法使用。add_graph方法用于可视化模型结构。
2. PyTorch 1.2.0及以上可以使用更新的tensorboardX，上述的方法实现更新实际上对较新版本的PyTorch有更好的支持。