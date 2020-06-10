# Matlab

## 图像处理

### 二值图像骨架化

```matlab
bw1 = bwmorph(I, 'thin', Inf); # 完整
bw2 = bwmorph(I, 'skel', Inf); # 有毛刺
bw3 = bwmorph(I); # 不完整
bw4 = bwmorph(I, 'MinBranchLength', 25); # 去除较短分叉
```

### 二值图像连通域

```matlab
[L, num] = bwlabel(BW, n) # BW为二值图像，n为4或8（默认）连通域，L为连通域标记图，num为连通域个数
```

