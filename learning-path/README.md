# 具身数据(Embodied Data)学习路线

> 本目录是 [Awesome Humanoid Learning](../README.md) 的配套学习专题,聚焦具身智能/人形机器人领域最关键的瓶颈之一——**数据从哪来、怎么处理、怎么用**。
>
> 每个阶段目录下都放置了对应的核心论文 PDF 与一份 `README.md` 索引,建议按顺序推进。

---

## 一、核心认知

和 LLM 拥有互联网级文本、CV 拥有海量图片不同,**机器人动作数据是稀缺、昂贵、且难以复用的**。具身数据方向的所有工作,本质上都在回答一个问题:

> 如何低成本地获得**大规模、高质量、可用于训练策略**的机器人交互数据?

围绕这个问题形成的技术地图:

```
数据来源
├── 1. 真机遥操作采集 (Teleoperation)       —— 质量最高,成本最高
├── 2. 人类视频/动作迁移 (Human Video)      —— 数据海量,存在具身差异(gap)
├── 3. 仿真生成 (Simulation / Sim2Real)     —— 可无限扩展,存在真实性差异
└── 4. 数据集与基准 (Datasets & Benchmarks) —— 标准化、可复现的公共资源
        ↓
数据处理:动作重定向 (Retargeting)、数据增强、格式标准化
        ↓
数据消费:模仿学习 / 强化学习 / VLA 等策略训练
```

---

## 二、目录树

```
learning-path/
├── README.md                     # 本文件:总路线
├── download_papers.ps1           # 论文批量下载脚本(可重复运行)
├── 00-prerequisites/             # 阶段0:预备知识(建模/仿真/学习范式)
├── 01-data-representation/       # 阶段1:数据的格式与表示
│   ├── HumanoidPano.pdf
│   └── Learning-to-Walk-in-Minutes.pdf
├── 02-teleoperation/            # 阶段2:真机遥操作数据采集
│   ├── OmniH2O.pdf
│   ├── HOMIE.pdf
│   ├── TWIST.pdf
│   └── NuExo.pdf
├── 03-human-video/              # 阶段3:从人类视频/动作学习
│   ├── HumanPlus.pdf
│   ├── Humanoid-Policy-Human-Policy.pdf
│   ├── OKAMI.pdf
│   ├── Visual-Imitation-VideoMimic.pdf
│   ├── HDMI.pdf
│   └── NIL.pdf
├── 04-retargeting/              # 阶段4:动作重定向(数据处理核心)
│   ├── GMR-Retargeting-Matters.pdf
│   ├── OmniRetarget.pdf
│   └── Unsupervised-Neural-Motion-Retargeting.pdf
├── 05-sim2real/                 # 阶段5:仿真数据生成与 Sim2Real
│   ├── Humanoid-Gym.pdf
│   ├── GaussGym.pdf
│   └── NeRF2Real.pdf
├── 06-datasets-benchmarks/      # 阶段6:数据集与基准
│   ├── Kaiwu.pdf
│   ├── MoCapAct.pdf
│   ├── HumanoidBench.pdf
│   └── BEHAVIOR-Robot-Suite.pdf
└── 07-foundation-vla/           # 阶段7:数据驱动的基础模型 / VLA
    ├── WholeBodyVLA.pdf
    ├── Survey-Behavior-Foundation-Model.pdf
    └── BFM-Zero.pdf
```

---

## 三、分阶段路线

| 阶段 | 主题 | 目标 | 目录 |
|:----:|:-----|:-----|:-----|
| 0 | 预备知识 | 理解数据"长什么样、喂给谁":建模、仿真、学习范式 | [`00-prerequisites`](00-prerequisites/) |
| 1 | 数据格式与表示 | 搞清一条具身数据包含什么(观测/动作/多模态) | [`01-data-representation`](01-data-representation/) |
| 2 | 真机遥操作采集 | 掌握质量最高的数据来源与采集系统 | [`02-teleoperation`](02-teleoperation/) |
| 3 | 人类视频学习 | 跨越 human→robot 具身鸿沟,规模化获取数据 | [`03-human-video`](03-human-video/) |
| 4 | 动作重定向 | 连接人类/仿真数据与具体机器人的关键桥梁 | [`04-retargeting`](04-retargeting/) |
| 5 | 仿真与 Sim2Real | 用仿真无限造数据并迁移到真机 | [`05-sim2real`](05-sim2real/) |
| 6 | 数据集与基准 | 会用、会评估标准化公共资源 | [`06-datasets-benchmarks`](06-datasets-benchmarks/) |
| 7 | 基础模型 / VLA | 理解数据如何汇聚成大模型,建立终局视角 | [`07-foundation-vla`](07-foundation-vla/) |

---

## 四、学习方法论

1. **读论文 + 跑代码结合**:优先挑带 `[code]` 的工作(GMR、Humanoid-Gym、ASAP、HumanoidBench、MetaMotivo 等),动手比只读收获大得多。
2. **围绕一台机器人展开**:建议锁定 **Unitree G1/H1**(社区资源最全),把「建模 → 重定向 → 采集/仿真 → 训练」全链路在它身上跑通。
3. **建立"数据链路"视角**:每读一篇都问自己——它解决了"数据来源 / 数据处理 / 数据消费"链条里的哪一环?
4. **持续跟踪**:主仓库 [`README.md`](../README.md) 的 `News` 与 2025/2026 论文表更新很快,定期回看即可跟上前沿。

---

## 五、资料下载说明

- 论文 PDF 通过 [`download_papers.ps1`](download_papers.ps1) 批量下载,可随时重复运行以补齐缺失文件:

```powershell
powershell -ExecutionPolicy Bypass -File learning-path/download_papers.ps1
```

- 少数论文仅提供项目主页(无公开 PDF),已在各阶段 README 中以链接形式给出。
