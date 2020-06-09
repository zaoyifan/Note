# Toolbox

## mmdetection

### windows 10环境中的配置方法

1. 安装VS2019，工作负载勾选使用C++的桌面开发，配置编译环境

2. 安装CUDA 10.2.89，自定义选项需选中Visual Studio Integration

3. 安装CUDNN 7.6.5，注意VS、CUDA与CUDNN版本需要对应，同时取决于mmdetection的版本

4. 安装Anaconda、PyCharm、GitBash，然后搭建Python虚拟环境

   ```powershell
   conda create -n mmdetection python=3.7
   conda activate mmdetection
   conda install pytorch torchvision cudatoolkit -c pytorch # 注意与系统CUDA版本一致，PyTorch版本取决于CUDA以及mmdetection的版本
   # 安装mmcv（pip install mmcv）
   git clone https://github.com/open-mmlab/mmcv.git
   cd mmcv
   pip install -e .
   # 安装Cython
   pip install Cython
   # 安装pycocotools
   pip install git+https://github.com/philferriere/cocoapi.git#subdirectory=PythonAPI
   # 下载mmdetection
   git clone https://github.com/open-mmlab/mmdetection.git
   cd mmdetection
   # 安装依赖包
   pip install -r requirements.txt
   ```

5. 修改编译文件

   ```powershell
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

