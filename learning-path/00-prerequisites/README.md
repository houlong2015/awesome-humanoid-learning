# 阶段 0:预备知识

> 在接触"数据"之前,先理解数据**长什么样**、最终**喂给谁**。本阶段以动手为主,无需下载论文。

## 学习目标

- 能读懂并在仿真里加载一个机器人模型
- 分清两种主要的"数据消费"范式:模仿学习(IL) vs 强化学习(RL)
- 搭好一套仿真环境

## 1. 机器人建模基础

- 概念:URDF / MJCF 格式、关节(joint)、连杆(link)、自由度(DoF)、正/逆运动学
- 动手:从主仓库 [🤖 Robot Models](../../README.md#-robot-models) 下载 **Unitree G1** 的 URDF/MJCF,在 MuJoCo 里加载观察其关节结构
  - G1(URDF & MJCF):<https://github.com/unitreerobotics/unitree_ros/tree/master/robots/g1_description>

## 2. 策略学习范式

- **模仿学习 / Imitation Learning**:从示范数据(遥操作、人类视频)中学习 → 决定了「数据从哪来」
- **强化学习 / RL**:在仿真中通过奖励试错学习 → 决定了「仿真数据如何产生」
- 二者的数据用途完全不同,这是理解后续所有章节的前提

## 3. 仿真环境

- **Isaac Gym / Isaac Lab**、**MuJoCo**
- 参考:[awesome-isaac-gym](https://github.com/wangcongrobot/awesome-isaac-gym)

## 进入下一阶段

理解数据的载体后,进入 [阶段 1:数据的格式与表示](../01-data-representation/)。
