# 阶段 2:真机遥操作数据采集

> 目前**质量最高**的数据来源,也是工业界(Figure、特斯拉等)数据飞轮的核心。重点理解:遥操作系统如何把人的动作实时映射到机器人并录制成训练数据。

## 学习目标

- 理解遥操作数据链路:人 → 采集设备 → 映射/重定向 → 机器人 → 录制
- 认识三大难点:**人-机具身差异**、**延迟**、**反馈**——它们直接决定数据质量

## 论文清单(建议顺序)

| 文件 | 标签 | 说明 |
|:-----|:-----|:-----|
| `OmniH2O.pdf` | `Teleoperation` | 通用且灵巧的人到人形全身遥操作 |
| `HOMIE.pdf` | `Teleoperation` | 同构外骨骼座舱,硬件 + 数据采集一体化 |
| `TWIST.pdf` | `Teleoperation` | 遥操作全身模仿系统 |
| `NuExo.pdf` | `Teleoperation` | 可穿戴外骨骼,用于数据采集与遥操作 |

## 仅项目主页的相关工作(无公开 PDF)

- **Open-TeleVision**(沉浸式主动视觉反馈遥操作,入门推荐):<https://robot-tv.github.io/>
- **CLONE**(闭环全身遥操作,长程任务):<https://humanoid-clone.github.io/>
- **ARMADA**(AR 辅助 / robot-free 数据采集,前沿):<https://nataliya.dev/armada>

## 进入下一阶段

[阶段 3:从人类视频/动作学习](../03-human-video/)
