# Cmd

## 添加环境变量

```powershell
set PATH=%PATH%;C:\Anaconda3 # %PATH%和环境变量路径相对位置可以互换，当前路径为%cd%
```

## 设置代理

```powershell
# 设置代理
set http_proxy=http://127.0.0.1:1080
set https_proxy=https://127.0.0.1:1080
set http_proxy=socks5://127.0.0.1:1080
set https_proxy=socks5://127.0.0.1:1080
# 取消代理
set http_proxy=
set https_proxy=
```

# Git

## 设置代理

```bash
# 设置代理
git config --global http.proxy "http://127.0.0.1:1080"
git config --global https.proxy "https://127.0.0.1:1080"
git config --global http.proxy "socks5://127.0.0.1:1080"
git config --global https.proxy "socks5://127.0.0.1:1080"
# 取消代理
git config --global --unset http.proxy
git config --global --unset https.proxy
```


