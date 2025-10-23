# 便携式辐射检测器

便携式辐射检测器是基于SiFli-SDK开发的嵌入式设备，通过蓝牙扫描获取2402MHz~2480MHz频段内每个频点的信号强度，并实时通过柱状图在屏幕上显示。

## 项目概述

本项目使用SiFli-SDK框架，在SF32LB52x芯片上实现蓝牙信号强度检测功能。设备能够扫描79个蓝牙频点（0-78），实时显示每个频点的RSSI值，并通过LVGL图形库提供直观的柱状图界面。

## 主要功能

- **蓝牙频点扫描**：覆盖2402MHz~2480MHz频段，扫描79个频点
- **实时信号强度检测**：每秒更新一次RSSI值
- **数据存储与回放**：支持存储最多10组历史数据，可通过按键切换显示
- **柱状图可视化**：使用LVGL库实现动态柱状图显示
- **按键控制**：支持开始/停止扫描、历史数据浏览功能

## 技术规格

- **硬件平台**：SF32LB52x芯片
- **蓝牙频段**：2402MHz~2480MHz
- **频点数量**：79个（通道0-78）
- **RSSI范围**：-127dBm ~ -20dBm
- **数据更新频率**：1Hz
- **历史数据存储**：最多10组数据

## 项目结构

```
Radiationdetector/
├── README.md              # 项目说明文档
├── README_EN.md           # 英文版说明文档
├── project/               # 项目配置文件
│   ├── Kconfig           # 内核配置
│   ├── SConscript        # SCons构建脚本
│   ├── SConstruct        # SCons构建配置
│   └── build_sf32lb52-lchspi-ulp_hcpu/  # 构建输出目录
└── src/                   # 源代码目录
    ├── main.c            # 主程序入口
    ├── BT/               # 蓝牙相关代码
    │   ├── bt_repeat.c   # 蓝牙扫描核心逻辑
    │   ├── bt_repeat.h   # 蓝牙扫描头文件
    │   ├── bt_tst_drv.c  # 蓝牙测试驱动
    │   └── cpu_tst_drv.c # CPU测试驱动
    ├── generated/        # GUI-Guider生成代码
    │   ├── gui_guider.c  # GUI配置和事件处理
    │   ├── setup_scr_screen.c  # 屏幕设置和图表配置
    │   ├── events_init.c # 事件初始化
    │   └── widgets_init.c # 控件初始化
    └── lv_demos/         # LVGL演示代码
```

## 核心模块说明

### 1. 蓝牙扫描模块 (`src/BT/bt_repeat.c`)

- **功能**：实现蓝牙频点扫描和RSSI值获取
  - 使用DMA中断处理蓝牙数据接收
  - 支持79个频点的循环扫描
  - RSSI值校准和数据处理
  - 数据队列管理（最多10组历史数据）

### 2. 用户界面模块 (`src/generated/`)

- **功能**：基于LVGL的图形用户界面
- **主要组件**：
  - 柱状图显示：实时显示79个频点的RSSI值
  - 按键事件处理：支持KEY1和KEY2按键控制

### 3. 主程序模块 (`src/main.c`)

- **功能**：系统初始化和任务调度
- **主要任务**：
  - 按键初始化（KEY1、KEY2）
  - GUI线程启动
  - 蓝牙扫描线程启动
  - 系统主循环

## 按键功能说明

- **KEY1**：历史数据浏览（向前翻页）
- **KEY2**：开始/停止扫描切换

## 编译和运行

### 环境要求

- SiFli-SDK开发环境
- RT-Thread操作系统
- GUI-Guider工具（用于界面设计）

## 参考文档

- [SiFli-SDK 快速入门](https://docs.sifli.com/projects/sdk/latest/sf32lb52x/quickstart/index.html)
- [RT-Thread 文档](https://www.rt-thread.org/document/site/)
- [LVGL 图形库文档](https://docs.lvgl.io/latest/en/html/)

## 技术支持

如有任何技术疑问，请在GitHub上提出 [issue](https://github.com/OpenSiFli/SiFli-SDK/issues)
            
      
