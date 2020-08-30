# Mathematics

## 矩阵分析与应用（张贤达）

### 第1章 矩阵代数基础

### 第2章 特殊矩阵

#### 2.1 Hermitian矩阵

#### 2.2 置换矩阵、互换矩阵与选择矩阵

##### 2.2.1 置换矩阵与互换矩阵

##### 2.2.2 广义置换矩阵与选择矩阵

$$
\boldsymbol{x}(t)=\boldsymbol{A} \boldsymbol{s}(t)=\sum_{i=1}^{n} \boldsymbol{a}_{i} s_{i}(t)
$$

对于以上观测模型，如何根据m维观测数据向量$\boldsymbol{x}(t)$恢复n维源信号向量$\boldsymbol{s}(t)$，称为**盲信号分离**，该过程存在排序不确定性和幅值不确定性，可通过广义置换矩阵来描述。

**广义置换矩阵**：每行和每列有且仅有一个非零元素的正方矩阵

**选择矩阵**：可以对给定矩阵某些行或某些列进行选择的矩阵

#### 2.3 正交矩阵和酉矩阵

**正交矩阵**：正方矩阵$Q \in \mathbb{R}^{n \times n}$满足$\boldsymbol{Q} \boldsymbol{Q}^{\mathrm{T}}=\boldsymbol{Q}^{\mathrm{T}} \boldsymbol{Q}=\boldsymbol{I}$

**酉矩阵**：正方矩阵$U \in \mathbb{C}^{n \times n}$满足$\boldsymbol{U} \boldsymbol{U}^{\mathrm{H}}=\boldsymbol{U}^{\mathrm{H}} \boldsymbol{U}=\boldsymbol{I}$

**正规矩阵**：正方矩阵$A \in \mathbb{C}^{n \times n}$满足$\boldsymbol{A} \boldsymbol{A}^{\mathrm{H}}=\boldsymbol{A}^{\mathrm{H}} \boldsymbol{A}$

**符号矩阵**：正方对角矩阵对角元素只取+1和-1两种值

**$\boldsymbol{J}$正交矩阵/超正规矩阵**：$\boldsymbol{Q} \boldsymbol{J} \boldsymbol{Q}^{\mathrm{T}}=\boldsymbol{J}$，其中$\boldsymbol{J}$为符号矩阵

#### 2.4 带型矩阵与三角矩阵

##### 2.4.1 带型矩阵

满足条件$a_{i j}=0,|i-j|>k$的矩阵$A \in \mathbb{C}^{m \times n}$称为**带型矩阵**，若$k=0$，则称为**三对角矩阵**。
$$
\boldsymbol{A}=\left[\begin{array}{ccccc}
a_{11} & a_{12} & a_{13} & \cdots & a_{1 n} \\
a_{21} & a_{22} & a_{23} & \cdots & a_{2 n} \\
0 & a_{32} & a_{33} & \cdots & a_{3 n} \\
0 & 0 & a_{43} & \cdots & a_{4 n} \\
\vdots & \vdots & \vdots & \vdots & \vdots \\
0 & 0 & 0 & \cdots & a_{n n}
\end{array}\right]
$$
矩阵$A$称作下$Hessenberg$矩阵，$A^T$称作上$Hessenberg$矩阵。

##### 2.4.2 三角矩阵

**上三角矩阵**：$u_{i j}=0,i>j$的正方矩阵$U$

**下三角矩阵**：$l_{i j}=0,i<j$的正方矩阵$L$

#### 2.5 求和向量与中心化矩阵

##### 2.5.1 求和向量

**求和向量**：所有元素等于1的向量

##### 2.5.2 中心化矩阵

**中心化矩阵**：$\boldsymbol{C}_{n}=\boldsymbol{I}_{n}-\overline{\boldsymbol{J}}_{n}=\boldsymbol{I}_{n}-\frac{1}{n} \boldsymbol{J}_{n}$

#### 2.6 相似矩阵和相合矩阵

##### 2.6.1 相似矩阵

满足$B=S^{-1} A S$的矩阵互为**相似矩阵**，它们具有相同的特征值、行列式和迹

##### 2.6.2 相合矩阵

满足$B=C^{H} A C$的矩阵互为**相合矩阵**，它们具有相同二次型

#### 2.7 Vandermonde矩阵

**Vandermonde矩阵**：矩阵每行或每列元素组成一个等比序列

#### 2.8 Fourier矩阵

##### 2.8.1 Fourier矩阵的定义与性质

离散Fourier变换（DFT）：
$$
X_{k}=\sum_{n=0}^{N-1} x_{n} \mathrm{e}^{-\mathrm{j} 2 \pi n k / N}=\sum_{n=0}^{N-1} x_{n} w^{n k}, \quad k=0,1, \cdots, N-1
$$
Fourier矩阵：
$$
\boldsymbol{F}=\left[\begin{array}{cccc}
1 & 1 & \cdots & 1 \\
1 & w & \cdots & w^{N-1} \\
\vdots & \vdots & \vdots & \vdots \\
1 & w^{N-1} & \cdots & w^{(N-1)(N-1)}
\end{array}\right], \quad w=\mathrm{e}^{-\mathrm{j} 2 \pi / N}
$$

##### 2.8.2 适定方程计算的初等行变换方法

##### 2.8.3 FFT算法的推导

#### 2.9 Hadamard矩阵

$\boldsymbol{H}_{n} \in \mathbb{R}^{n \times n}$称为Hadamard矩阵，若它的所有元素取+1或者-1，且$\boldsymbol{H}_{n} \boldsymbol{H}_{n}^{\mathrm{T}}=\boldsymbol{H}_{n}^{\mathrm{T}} \boldsymbol{H}_{n}=n \boldsymbol{I}_{n}$

#### 2.10 Toeplitz矩阵

任何一条对角线元素取相同值：
$$
\boldsymbol{A}=\left[\begin{array}{ccccc}
a_{0} & a_{-1} & a_{-2} & \cdots & a_{-n} \\
a_{1} & a_{0} & a_{-1} & \cdots & a_{-n+1} \\
a_{2} & a_{1} & a_{0} & \ddots & \vdots \\
\vdots & \vdots & \ddots & \ddots & a_{-1} \\
a_{n} & a_{n-1} & \cdots & a_{1} & a_{0}
\end{array}\right]=\left[a_{i-j}\right]_{i, j=0}^{n}
$$

##### 2.10.1 对称Toeplitz矩阵

$$
\boldsymbol{A}=\left[a_{|i-j|}\right]_{i, j=0}^{n}=\operatorname{Toep}\left[a_{0}, a_{1}, \cdots, a_{n}\right]
$$

##### 2.10.2 Toeplitz矩阵的离散余弦变换

#### 2.11 Hankel矩阵

交叉对角线具有相同元素的矩阵：
$$
\boldsymbol{A}=\left[\begin{array}{ccccc}
a_{0} & a_{1} & a_{2} & \cdots & a_{n} \\
a_{1} & a_{2} & a_{3} & \cdots & a_{n+1} \\
a_{2} & a_{3} & a_{4} & \cdots & a_{n+2} \\
\vdots & \vdots & \vdots & \vdots & \vdots \\
a_{n} & a_{n+1} & a_{n+2} & \cdots & a_{2 n}
\end{array}\right]
$$

### 第3章 矩阵微分

#### 3.1 Jacobian矩阵与梯度矩阵

##### 3.3.1 Jacobian矩阵

Jacobian矩阵：
$$
\mathrm{D}_{\boldsymbol{X}} f(\boldsymbol{X})=\frac{\partial f(\boldsymbol{X})}{\partial \boldsymbol{X}^{\mathrm{T}}}=\left[\begin{array}{ccc}
\frac{\partial f(\boldsymbol{X})}{\partial x_{11}} & \cdots & \frac{\partial f(\boldsymbol{X})}{\partial x_{m 1}} \\
\vdots & \ddots & \vdots \\
\frac{\partial f(\boldsymbol{X})}{\partial x_{1 n}} & \cdots & \frac{\partial f(\boldsymbol{X})}{\partial x_{m n}}
\end{array}\right] \in \mathbb{R}^{n \times m}
$$
行偏导向量：
$$
D_{\mathrm{vec}} \boldsymbol{x}^{f(\boldsymbol{X})}=\frac{\partial f(\boldsymbol{X})}{\partial \operatorname{vec}^{\mathrm{T}}(\boldsymbol{X})}=\left[\frac{\partial f(\boldsymbol{X})}{\partial x_{11}}, \cdots, \frac{\partial f(\boldsymbol{X})}{\partial x_{m 1}}, \cdots, \frac{\partial f(\boldsymbol{X})}{\partial x_{1 n}}, \cdots, \frac{\partial f(\boldsymbol{X})}{\partial x_{m n}}\right]
$$

##### 3.1.2 梯度矩阵

$$
\nabla_{\boldsymbol{X}} f(\boldsymbol{X})=\left[\begin{array}{ccc}
\frac{\partial f(\boldsymbol{X})}{\partial x_{11}} & \cdots & \frac{\partial f(\boldsymbol{X})}{\partial x_{1 n}} \\
\vdots & \ddots & \vdots \\
\frac{\partial f(\boldsymbol{X})}{\partial x_{m 1}} & \cdots & \frac{\partial f(\boldsymbol{X})}{\partial x_{m n}}
\end{array}\right]=\frac{\partial f(\boldsymbol{X})}{\partial \boldsymbol{X}}
$$

##### 3.1.3 偏导和梯度计算

#### 3.2 一阶实矩阵微分和Jacobian矩阵辨识

##### 3.2.1 一阶实矩阵微分

##### 3.2.2 标量函数的Jacobian矩阵辨识

多变量函数$f\left(x_{1}, \cdots, x_{m}\right)$在点$\left(x_{1}, \cdots, x_{m}\right)$可微分的充分条件是：偏导数$\frac{\partial f}{\partial x_{1}}, \cdots, \frac{\partial f}{\partial x_{m}}$均存在，并且连续。
$$
\begin{aligned}
\mathrm{d} f(\boldsymbol{x}) &=\operatorname{tr}(\boldsymbol{A} \mathrm{d} \boldsymbol{x}) \Longleftrightarrow \mathrm{D}_{\boldsymbol{x}} f(\boldsymbol{x})=\boldsymbol{A} \\
\mathrm{d} f(\boldsymbol{X}) &=\operatorname{tr}(\boldsymbol{A} \mathrm{d} \boldsymbol{X}) \Longleftrightarrow \mathrm{D}_{\boldsymbol{X}} f(\boldsymbol{X})=\boldsymbol{A}
\end{aligned}
$$

##### 3.2.3 实值矩阵函数的Jacobian矩阵辨识

$$
\begin{array}{c}
\mathrm{d}(\operatorname{vec} \boldsymbol{F}(\boldsymbol{X}))=\boldsymbol{A} \mathrm{d}(\mathrm{vec} \boldsymbol{X})+\boldsymbol{B} \mathrm{d}\left(\operatorname{vec} \boldsymbol{X}^{\mathrm{T}}\right) \\
\Longleftrightarrow \mathrm{D}_{\boldsymbol{X}} \boldsymbol{F}(\boldsymbol{X})=\frac{\partial \operatorname{vec} \boldsymbol{F}(\boldsymbol{X})}{\partial(\operatorname{vec} \boldsymbol{X})^{\mathrm{T}}}=\boldsymbol{A}+\boldsymbol{B K}_{m n}
\end{array}
$$

#### 3.3 二阶实矩阵微分与Hessian矩阵辨识

##### 3.3.1 Hessian矩阵

$$
\boldsymbol{H}[f(\boldsymbol{x})]=\frac{\partial^{2} f(\boldsymbol{x})}{\partial \boldsymbol{x} \partial \boldsymbol{x}^{\mathrm{T}}}=\frac{\partial}{\partial \boldsymbol{x}}\left[\frac{\partial f(\boldsymbol{x})}{\partial \boldsymbol{x}^{\mathrm{T}}}\right] \in \mathbb{R}^{m \times m}
$$

$$
\boldsymbol{H}[f(\boldsymbol{x})]=\nabla_{\boldsymbol{x}}^{2} f(\boldsymbol{x})=\nabla_{\boldsymbol{x}}\left(\mathrm{D}_{\boldsymbol{x}} f(\boldsymbol{x})\right)
$$

##### 3.3.2 Hessian矩阵的辨识原理

实标量函数二阶微分法则的向量形式：$\mathrm{d}^{2} f(\boldsymbol{x})=(\mathrm{d} \boldsymbol{x})^{\mathrm{T}} \boldsymbol{H}[f(\boldsymbol{x})] \mathrm{d} \boldsymbol{x}$，其中$\boldsymbol{H}[f(\boldsymbol{x})]=\frac{\partial f^{2}(\boldsymbol{x})}{\partial \boldsymbol{x} \partial \boldsymbol{x}^{\mathrm{T}}}$。

以向量$x$或者矩阵$X$为变元的标量函数的二阶微分与Hessian矩阵之间存在下面的二阶辨识关系：
$$
\begin{aligned}
\mathrm{d}^{2} f(\boldsymbol{x})=(\mathrm{d} \boldsymbol{x})^{\mathrm{T}} \boldsymbol{B} \mathrm{d} \boldsymbol{x} & \Longleftrightarrow \boldsymbol{H}[f(\boldsymbol{x})]=\frac{1}{2}\left(\boldsymbol{B}^{\mathrm{T}}+\boldsymbol{B}\right) \\
\mathrm{d}^{2} f(\boldsymbol{X})=(\mathrm{d}(\operatorname{vec} \boldsymbol{X}))^{\mathrm{T}} \boldsymbol{B} \mathrm{d}(\mathrm{vec} \boldsymbol{X}) & \Longleftrightarrow \boldsymbol{H}[f(\boldsymbol{X})]=\frac{1}{2}\left(\boldsymbol{B}^{\mathrm{T}}+\boldsymbol{B}\right)
\end{aligned}
$$

##### 3.3.3 Hessian矩阵的辨识方法

令$f(X)$是$m \times n$实矩阵$X$的实值函数，并可二次微分，则实值函数$f(X)$在$X$的二阶实微分矩阵与Hessian矩阵存在下面的对应关系
$$
\mathrm{d}^{2} f(\boldsymbol{X})=\operatorname{tr}\left(\boldsymbol{V}(\mathrm{d} \boldsymbol{X}) \boldsymbol{U}(\mathrm{d} \boldsymbol{X})^{\mathrm{T}}\right) \Longleftrightarrow \boldsymbol{H}[f(\boldsymbol{X})]=\frac{1}{2}\left(\boldsymbol{U}^{\mathrm{T}} \otimes \boldsymbol{V}+\boldsymbol{U} \otimes \boldsymbol{V}^{\mathrm{T}}\right)
$$

$$
\mathrm{d}^{2} f(\boldsymbol{X})=\operatorname{tr}(\boldsymbol{B}(\mathrm{d} \boldsymbol{X}) \boldsymbol{C} \mathrm{d} \boldsymbol{X}) \Longleftrightarrow \boldsymbol{H}[f(\boldsymbol{X})]=\frac{1}{2} \boldsymbol{K}_{n m}\left(\boldsymbol{C}^{\mathrm{T}} \otimes \boldsymbol{B}+\boldsymbol{B}^{\mathrm{T}} \otimes \boldsymbol{C}\right)
$$

#### 3.4 共轭梯度和复Hessian矩阵

##### 3.4.1 全纯函数和复变函数的偏导

函数$f(z)=u(x,y)+jv(x,y)$为全纯函数，仅当实变函数$u(x,y)$和$v(x,y)$同时满足Laplace方程$\frac{\partial^{2} u(x, y)}{\partial x^{2}}+\frac{\partial^{2} u(x, y)}{\partial y^{2}}=0$和$\frac{\partial^{2} v(x, y)}{\partial x^{2}}+\frac{\partial^{2} v(x, y)}{\partial y^{2}}=0$。

满足Laplace方程$\frac{\partial^{2} g(x, y)}{\partial x^{2}}+\frac{\partial^{2} g(x, y)}{\partial y^{2}}=0$的实变函数$g(x, y)$成为调和函数。

复变量$z$和复共轭变量$z^*$是两个独立的变量。

##### 3.4.2 复矩阵微分

##### 3.4.3 复Hessian矩阵

#### 3.5 复梯度矩阵与复Hessian矩阵的辨识

##### 3.5.1 实标量函数的复梯度矩阵辨识

$$
\mathrm{d} f\left(\boldsymbol{Z}, \boldsymbol{Z}^{*}\right)=\operatorname{tr}\left(\boldsymbol{A} \mathrm{d} \boldsymbol{Z}+\boldsymbol{B} \mathrm{d} \boldsymbol{Z}^{*}\right) \Longleftrightarrow\left\{\begin{array}{l}
\mathrm{D}_{\boldsymbol{Z}} f\left(\boldsymbol{Z}, \boldsymbol{Z}^{*}\right)=\boldsymbol{A} \\
\mathrm{D}_{\boldsymbol{Z}^{*}} f\left(\boldsymbol{Z}, \boldsymbol{Z}^{*}\right)=\boldsymbol{B}
\end{array}\right.
$$

$$
\mathrm{d} f\left(\boldsymbol{Z}, \boldsymbol{Z}^{*}\right)=\operatorname{tr}\left(\boldsymbol{A} \mathrm{d} \boldsymbol{Z}+\boldsymbol{B} \mathrm{d} \boldsymbol{Z}^{*}\right) \Longleftrightarrow\left\{\begin{array}{l}
\nabla_{\boldsymbol{z}} f\left(\boldsymbol{Z}, \boldsymbol{Z}^{*}\right)=\boldsymbol{A}^{\mathrm{T}} \\
\nabla_{\boldsymbol{Z}^{*}} f\left(\boldsymbol{Z}, \boldsymbol{Z}^{*}\right)=\boldsymbol{B}^{\mathrm{T}}
\end{array}\right.
$$

##### 3.5.2 矩阵函数的负梯度矩阵辨识

$$
\mathrm{d}\left(\operatorname{vec} \boldsymbol{F}\left(\boldsymbol{Z}, \boldsymbol{Z}^{*}\right)\right)=\boldsymbol{A} \mathrm{d}(\operatorname{vec} \boldsymbol{Z})+\boldsymbol{B} \mathrm{d}\left(\operatorname{vec} \boldsymbol{Z}^{*}\right) \Leftrightarrow\left\{\begin{array}{l}
\mathrm{D}_{\operatorname{vec}(\boldsymbol{Z})} \boldsymbol{F}\left(\boldsymbol{Z}, \boldsymbol{Z}^{*}\right)=\boldsymbol{A} \\
\mathrm{D}_{\operatorname{vec}\left(\boldsymbol{Z}^{*}\right)} \boldsymbol{F}\left(\boldsymbol{Z}, \boldsymbol{Z}^{*}\right)=\boldsymbol{B}
\end{array}\right.
$$

$$
\mathrm{d}\left(\operatorname{vec} \boldsymbol{F}\left(\boldsymbol{Z}, \boldsymbol{Z}^{*}\right)\right)=\boldsymbol{A} \mathrm{d}(\operatorname{vec} \boldsymbol{Z})+\boldsymbol{B} \mathrm{d}\left(\operatorname{vec} \boldsymbol{Z}^{*}\right) \Leftrightarrow\left\{\begin{array}{l}
\nabla_{\operatorname{vec}(\boldsymbol{Z})} \boldsymbol{F}\left(\boldsymbol{Z}, \boldsymbol{Z}^{*}\right)=\boldsymbol{A}^{\mathrm{T}} \\
\nabla_{\operatorname{vec}\left(\boldsymbol{Z}^{*}\right)} \boldsymbol{F}\left(\boldsymbol{Z}, \boldsymbol{Z}^{*}\right)=\boldsymbol{B}^{\mathrm{T}}
\end{array}\right.
$$

$$
\mathrm{d}\left(\boldsymbol{F}\left(\boldsymbol{Z}, \boldsymbol{Z}^{*}\right)\right)=\boldsymbol{A}(\mathrm{d} \boldsymbol{Z}) \boldsymbol{B}+\boldsymbol{C}\left(\mathrm{d} \boldsymbol{Z}^{*}\right) \boldsymbol{D} \Leftrightarrow\left\{\begin{array}{l}
\mathrm{D}_{\operatorname{vec}(\boldsymbol{Z})} \boldsymbol{F}\left(\boldsymbol{Z}, \boldsymbol{Z}^{*}\right)=\boldsymbol{B}^{\mathrm{T}} \otimes \boldsymbol{A} \\
\mathrm{D}_{\operatorname{vec}\left(\boldsymbol{Z}^{*}\right)} \boldsymbol{F}\left(\boldsymbol{Z}, \boldsymbol{Z}^{*}\right)=\boldsymbol{D}^{\mathrm{T}} \otimes \boldsymbol{C}
\end{array}\right.
$$

$$
\begin{array}{c}
\mathrm{d}\left(\boldsymbol{F}\left(\boldsymbol{Z}, \boldsymbol{Z}^{*}\right)\right)=\boldsymbol{A}(\mathrm{d} \boldsymbol{Z})^{\mathrm{T}} \boldsymbol{B}+\boldsymbol{C}\left(\mathrm{d} \boldsymbol{Z}^{*}\right)^{\mathrm{T}} \boldsymbol{D} \\
\Leftrightarrow\left\{\begin{array}{l}
\mathrm{D}_{\mathrm{vec}(\boldsymbol{Z})} \boldsymbol{F}\left(\boldsymbol{Z}, \boldsymbol{Z}^{*}\right)=\left(\boldsymbol{B}^{\mathrm{T}} \otimes \boldsymbol{A}\right) \boldsymbol{K}_{m n} \\
\mathrm{D}_{\mathrm{vec}\left(\boldsymbol{Z}^{*}\right)} \boldsymbol{F}\left(\boldsymbol{Z}, \boldsymbol{Z}^{*}\right)=\left(\boldsymbol{D}^{\mathrm{T}} \otimes \boldsymbol{C}\right) \boldsymbol{K}_{m n}
\end{array}\right.
\end{array}
$$

##### 3.5.3 复Hessian矩阵辨识

$$
\begin{array}{l}
\operatorname{tr}\left(C(\mathrm{d} Z) D(\mathrm{d} Z)^{\mathrm{T}}\right) \Leftrightarrow H_{Z, Z}=\frac{1}{2}\left(D^{\mathrm{T}} \otimes C+D \otimes C^{\mathrm{T}}\right) \\
\operatorname{tr}\left(E(\mathrm{d} Z) F\left(\mathrm{d} Z^{*}\right)^{\mathrm{T}}\right) \Leftrightarrow H_{Z, Z^{*}}=\frac{1}{2}\left(F^{\mathrm{T}} \otimes E+F^{*} \otimes E^{\mathrm{H}}\right)
\end{array}
$$

$$
\begin{array}{l}
\operatorname{tr}(\boldsymbol{C}(\mathrm{d} \boldsymbol{Z}) \boldsymbol{D} \mathrm{d} \boldsymbol{Z}) \Leftrightarrow \boldsymbol{H}_{\boldsymbol{Z}, \boldsymbol{Z}}=\frac{1}{2} \boldsymbol{K}_{n m}\left(\boldsymbol{D}^{\mathrm{T}} \otimes \boldsymbol{C}+\boldsymbol{C}^{\mathrm{T}} \otimes \boldsymbol{D}\right) \\
\operatorname{tr}\left(\boldsymbol{E}(\mathrm{d} \boldsymbol{Z}) \boldsymbol{F} \mathrm{d} \boldsymbol{Z}^{*}\right) \Leftrightarrow \boldsymbol{H}_{\boldsymbol{Z}, \boldsymbol{Z}^{*}}=\frac{1}{2} \boldsymbol{K}_{n m}\left(\boldsymbol{F}^{\mathrm{T}} \otimes \boldsymbol{E}+\boldsymbol{E}^{\mathrm{H}} \otimes \boldsymbol{F}^{*}\right)
\end{array}
$$

### 第4章 梯度分析和最优化

#### 4.1 实变函数无约束优化的梯度分析

##### 4.1.1 单变量函数$f(x)$的平稳点与极值点

##### 4.1.2 多变量函数$f(\boldsymbol{x})$的平稳点和极值点

##### 4.1.3 多变量函数$f(\boldsymbol{X})$的平稳点和极值点

##### 4.1.4 实变函数的梯度分析

#### 4.2 复变函数无约束优化的梯度分析

##### 4.2.1 多变量复变函数$f(\boldsymbol{z}, \boldsymbol{z^*})$的平稳点和极值点

##### 4.2.2 多变量复变函数$f(\boldsymbol{Z}, \boldsymbol{Z^*})$的平稳点和极值点

##### 4.2.3 无约束最小化问题的梯度分析

局部极小点辨识的必要条件：若$z_0$或$Z_0$是$f(\boldsymbol{z}, \boldsymbol{z^*})$或$f(\boldsymbol{Z}, \boldsymbol{Z^*})$的局部极小点，则该函数在点$z_0$或$Z_0$的共轭梯度为零向量或零矩阵，并且全Hessian矩阵半正定

局部极小点辨识的必要条件：若函数$f(\boldsymbol{z}, \boldsymbol{z^*})$在$z_0$的共轭梯度向量为零向量，或者$f(\boldsymbol{Z}, \boldsymbol{Z^*})$在$Z_0$的共轭梯度矩阵为零矩阵，并且全Hessian矩阵正定，则$z_0$是函数$f(\boldsymbol{z}, \boldsymbol{z^*})$的严格局部极小点，或$Z_0$是$f(\boldsymbol{Z}, \boldsymbol{Z^*})$的严格局部极小点

#### 4.3 凸优化理论

##### 4.3.1 标准约束优化问题

最小值原理：若$f(x)$是凸优化问题的目标函数，则可行点$x$是最优解点的充分必要条件是
$$
\langle\nabla f(\boldsymbol{x}), \boldsymbol{y}-\boldsymbol{x}\rangle \geqslant 0, \quad \forall \boldsymbol{y} \in K
$$

##### 4.3.2 凸集和凸函数

一个集合$S \in \mathbb{R}^{n}$称为凸集（合），若对任意两个点$\boldsymbol{x}, \boldsymbol{y} \in S$，连接它们的线段也在集合$S$内，即
$$
\boldsymbol{x}, \boldsymbol{y} \in S, \quad \theta \in[0,1] \quad \Longrightarrow \quad \theta \boldsymbol{x}+(1-\theta) \boldsymbol{y} \in S
$$

一个凸集$S \subseteq \mathbb{R}^{n}$称为凸锥，若从原点出发，并且通过该集合中任意一点的所有射线以及连接这些射线的任意两点的所有线段仍然在该凸集中，即
$$
\boldsymbol{x}, \boldsymbol{y} \in S, \lambda, \mu \geqslant 0 \Longrightarrow \lambda \boldsymbol{x}+\mu \boldsymbol{y} \in S
$$

##### 4.3.3 凸函数辨识的充分必要条件

凸函数辨识的一阶充分必要条件：令$f: S \rightarrow \mathbb{R}$是定义在$n$维向量空间$\mathbb{R}^n$内的凸集$S$上的函数，并且可微分，则
$$
\begin{aligned}
f(\boldsymbol{x}) & \text { 凸 } \Leftrightarrow\left\langle\nabla_{\boldsymbol{x}} f(\boldsymbol{x})-\nabla_{\boldsymbol{x}} f(\boldsymbol{y}), \boldsymbol{x}-\boldsymbol{y}\right\rangle \geqslant 0, \forall \boldsymbol{x}, \boldsymbol{y} \in S \\
f(\boldsymbol{x}) \text { 严格凸 } & \Leftrightarrow\left\langle\nabla_{\boldsymbol{x}} f(\boldsymbol{x})-\nabla_{\boldsymbol{x}} f(\boldsymbol{y}), \boldsymbol{x}-\boldsymbol{y}\right\rangle>0, \forall \boldsymbol{x}, \boldsymbol{y} \in S \text { 和 } \boldsymbol{x} \neq \boldsymbol{y} \\
f(\boldsymbol{x}) \text { 强凸 } & \Leftrightarrow\left\langle\nabla_{\boldsymbol{x}} f(\boldsymbol{x})-\nabla_{\boldsymbol{x}} f(\boldsymbol{y}), \boldsymbol{x}-\boldsymbol{y}\right\rangle \geqslant \mu\|\boldsymbol{x}-\boldsymbol{y}\|_{2}^{2}, \forall \boldsymbol{x}, \boldsymbol{y} \in S
\end{aligned}
$$
凸函数辨识的二阶充分必要条件：令$f: S \rightarrow \mathbb{R}$是定义在$n$维向量空间$\mathbb{R}^n$内的凸集$S$上的函数，并且可二次微分，则$f(x)$为凸函数，当且仅当Hessian矩阵半正定
$$
\boldsymbol{H}_{\boldsymbol{x}} f(\boldsymbol{x})=\frac{\partial^{2} f(\boldsymbol{x})}{\partial \boldsymbol{x} \partial \boldsymbol{x}^{\mathrm{T}}} \succeq 0, \quad \forall \boldsymbol{x} \in S
$$

##### 4.3.4 凸优化方法及其梯度分析

