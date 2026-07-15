# 阶段 5:仿真数据生成与 Sim2Real

> 用仿真"无中生有"造数据,再迁移到真机。是具身数据的一大主力路线。

## 学习目标

- 理解 Sim2Real 的核心矛盾:sim-real gap(动力学差异、视觉差异)
- 掌握零样本 Sim2Real 的经典范式
- 了解 real-to-sim(从真实重建仿真)的新趋势

## 论文清单

| 文件 | 标签 | 说明 |
|:-----|:-----|:-----|
| `Humanoid-Gym.pdf` | `Sim2Real` | 零样本 Sim2Real 经典范例,建议跑通,代码见下 |
| `GaussGym.pdf` | `Sim` | 基于 3DGS 从像素学习运动的 real-to-sim 开源框架(前沿) |
| `NeRF2Real.pdf` | `Sim2Real` | 用 NeRF 做视觉引导的 Sim2Real |

## 代码 / 相关工作

- Humanoid-Gym:<https://github.com/roboterax/humanoid-gym>
- **ASAP**(对齐仿真与真实物理,弥合 sim-real gap;仅项目/代码):项目 <https://agile.human2humanoid.com/> ,代码 <https://github.com/LeCAR-Lab/ASAP>

## 进入下一阶段

[阶段 6:数据集与基准](../06-datasets-benchmarks/)
