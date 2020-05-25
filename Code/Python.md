# Python

## Pip

### 国内源

 ```
阿里云： http://mirrors.aliyun.com/pypi/simple/
中国科技大学： https://pypi.mirrors.ustc.edu.cn/simple/ 
豆瓣(douban)： http://pypi.douban.com/simple/ 
清华大学： https://pypi.tuna.tsinghua.edu.cn/simple/ 
中国科学技术大学： http://pypi.mirrors.ustc.edu.cn/simple/
 ```

## Conda

### 虚拟环境

```bash
conda env list # 查看虚拟环境
conda create -n environment_name python=X.X # 创建虚拟环境
activate your_env_name # 激活虚拟环境，Linux需要在前面加source
deactivate your_env_name # 关闭虚拟环境，Linux需要在前面加source
conda env remove -n your_env_name # Linux删除虚拟环境
conda remove --name your_env_name --all # Windows删除虚拟环境
# 指定目录虚拟环境操作
conda create --prefix=D:\python36\py36 python=3.6 # 创建
activate D:\python36\py36 # 激活
deactivate # 退出
conda remove --prefix=D:\python36\py36 --all # 删除
```

## Pyinstaller

### Python程序打包

```shell
pyinstaller deploy.py # 可通过pyinstalller -h查看其他选项，生成的可执行程序在dist文件夹下
```

### 打包过程出现的相关问题

打包tensorflow存在的问题

参考博客：[ubuntu下利用pyinstaller将tensorflow进行打包](https://blog.csdn.net/mr_health/article/details/89684301)

RecursionError或UnicodeDecodeError

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

## Q&A

### 启动Python出现Failed calling sys.\_\_interactivehook\_\_

1. 进入site-packages\pyreadline\lineeditor目录
2. 打开history.py文件
3. 第82行修改为for line in open(filename, 'r', encoding='utf-8'):
4. 重新启动Python