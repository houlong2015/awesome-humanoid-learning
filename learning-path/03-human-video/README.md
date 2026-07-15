# 阶段 3:从人类视频/动作学习

> 人类视频是**近乎无限**的数据源,难点是跨越 human → robot 的具身鸿沟。这是学术界最热的规模化数据方向。

## 学习目标

- 理解如何把人类动作/视频转化为机器人可用的监督信号
- 掌握"具身差异(embodiment gap)"的主流弥合思路
- 了解利用生成模型(视频扩散)做「无数据/少数据」学习的前沿

## 论文清单(建议顺序)

| 文件 | 标签 | 说明 |
|:-----|:-----|:-----|
| `HumanPlus.pdf` | `Imitation` | 人形影随 + 模仿(Shadowing + Imitation),经典入门 |
| `Humanoid-Policy-Human-Policy.pdf` | `Imitation` | 把人类策略直接当作机器人策略 |
| `OKAMI.pdf` | `Imitation` | 单段视频模仿学操作技能(CoRL) |
| `Visual-Imitation-VideoMimic.pdf` | `Imitation` | 视觉模仿实现情境化人形控制 |
| `HDMI.pdf` | `WBC` | 从人类视频学交互式全身控制 |
| `NIL.pdf` | `Imitation` | 利用预训练视频扩散模型做「无数据」模仿学习 |

## 进入下一阶段

[阶段 4:动作重定向](../04-retargeting/)
