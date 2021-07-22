# Literature

## Road Extraction

### VecRoad: Point-based Iterative Graph Exploration for Road Graphs Extraction [[Code](https://github.com/tansor/VecRoad)]



### A Global Context-aware and Batch-independent Network for road extraction from VHR satellite imagery (GCB-Net)

**缺少空间上下文关系：**提出全局上下文感知模块（GCA），整合全局上下文特征

**模型对于不同数据域的可迁移性：**使用过滤响应归一化层（FRN），消除批处理依赖，加速学习，提高模型鲁棒性



## Lane Detection

### Focus on Local: Detecting Lane Marker from Bottom Up via Key Point

本文方法叫做FOLOLane，通过对局部模式进行建模，自底向上实现全局结构的预测。网络包括两个分支，分别进行关键点的预测以及局部几何结构的构建。同时，提出了一个高效率的解码算法，解析得到最终车道线。

![image-20210722163804361](https://cdn.jsdelivr.net/gh/zaoyifan/Gallery/Note/image-20210722163804361.png)
