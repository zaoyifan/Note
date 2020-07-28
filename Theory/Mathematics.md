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

