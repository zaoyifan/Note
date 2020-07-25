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

