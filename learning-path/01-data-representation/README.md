# 阶段 1:数据的格式与表示

> 搞清楚一条具身数据到底包含什么:观测(视觉 / 本体感知)、动作(关节角 / 末端位姿)、时序对齐、多模态(触觉、点云、Occupancy)。

## 学习目标

- 能说清一条 (observation, action) 数据的组成与时序结构
- 理解仿真中数据是如何被**大规模并行**产生的
- 了解多模态感知数据的表示方式

## 论文清单

| 文件 | 标签 | 说明 |
|:-----|:-----|:-----|
| `Learning-to-Walk-in-Minutes.pdf` | `Platform` | 基于 `legged_gym` 的大规模并行 RL,理解仿真数据的产生方式(2022, PMLR) |
| `HumanoidPano.pdf` | `Perception` | 球面全景 + LiDAR 跨模态感知,理解多模态观测数据 |

> `Learning-to-Walk-in-Minutes` 论文另有 PMLR 版本 <https://proceedings.mlr.press/v164/rudin22a/rudin22a.pdf> ,代码 <https://github.com/leggedrobotics/legged_gym>

## 进入下一阶段

[阶段 2:真机遥操作数据采集](../02-teleoperation/)
