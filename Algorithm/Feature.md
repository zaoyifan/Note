# Feature

## 线特征

### 霍夫变换

通过在参数空间计算累计结果的局部最大值，检测具有特定形状的物体（广义霍夫变换）

### LSD: a Line Segment Detector

1. 以S=0.8的尺度进行高斯核采样
2. 计算梯度和梯度方向
3. 梯度伪排序
4. 小梯度值抑制
5. 选取最大梯度作为种子点，进行区域增长，得到支持域
6. 拟合支持域的外接矩形
7. 判断同性点密度和NFA，改进矩形

### EDLines

1. Edge Drawing (ED) 算法进行边缘检测

   (1) 高斯滤波，抑制噪声

   (2) 计算梯度的幅值和方向

   (3) 选取梯度值峰值作为锚

   (4) 绘制锚之间的边

2. 最小二乘拟合线段

3. 亥姆霍兹原理进行验证，消除虚假线段