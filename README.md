# 便携式蓝牙信号强度检测器

便携式蓝牙信号强度检测器是基于SiFli-SDK开发的嵌入式设备，通过蓝牙扫描获取2402MHz~2480MHz频段内每个频点的信号强度，并实时通过柱状图在屏幕上显示。

## 项目概述

本项目使用SiFli-SDK框架，在SF32LB52x芯片上实现蓝牙信号强度检测功能。设备能够扫描79个蓝牙频点（0-78），实时显示每个频点的RSSI值，并通过LVGL图形库提供直观的柱状图界面。

## 主要功能

- **蓝牙频点扫描**：覆盖2402MHz~2480MHz频段，扫描79个频点
- **数据存储与回放**：支持存储10组历史数据，可通过按键切换显示
- **数据平滑处理**：实时显示数据为前30次扫描数据的平均值
- **柱状图可视化**：使用LVGL库实现动态柱状图显示，支持渐变颜色效果
- **按键控制**：支持开始/停止扫描、历史数据浏览功能

## 技术规格

- **硬件平台**：SF32LB52x芯片
- **蓝牙频段**：2402MHz~2480MHz
- **频点数量**：79个（通道0-78）
- **RSSI范围**：-110dBm ~ -20dBm
- **数据更新频率**：每30ms更新一次
- **历史数据存储**：最多10组数据
- **显示范围**：Y轴范围-110dBm ~ -20dBm

## 项目结构

```
RadiationMonitor/
├── README.md              # 项目说明文档
├── README_EN.md           # 英文版说明文档
├── assets/                # 资源文件
│   └── img.jpg           # 项目效果图
├── project/              # 项目配置文件
│   ├── Kconfig           # 内核配置
│   ├── SConscript        # SCons构建脚本
│   ├── SConstruct        # SCons构建配置
│   ├── rtconfig.py       # RT-Thread配置
│   ├── proj.conf         # 项目配置
│   └── build_sf32lb52-lchspi-ulp_hcpu/  # 构建输出目录
└── src/                  # 源代码目录
    ├── main.c            # 主程序入口
    ├── Kconfig           # 源码配置
    ├── SConscript        # 源码构建脚本
    ├── BT/               # 蓝牙相关代码
    │   ├── bt_repeat.c   # 蓝牙扫描核心逻辑
    │   ├── bt_repeat.h   # 蓝牙扫描头文件
    │   └── SConscript    # 蓝牙模块构建脚本
    └── generated/        # GUI-Guider生成代码
        ├── gui.c         # GUI主程序
        ├── gui.h         # GUI头文件
        ├── gui_guider.c  # GUI配置和事件处理
        ├── gui_guider.h  # GUI配置头文件
        ├── setup_scr_screen.c  # 屏幕设置和图表配置
        ├── events_init.c # 事件初始化
        ├── widgets_init.c # 控件初始化
        ├── widgets_init.h # 控件初始化头文件
        └── SConscript    # GUI模块构建脚本
```

## 核心模块说明

### 1. 蓝牙扫描模块 (`src/BT/bt_repeat.c`)

- **功能**：实现蓝牙频点扫描和RSSI值获取
  - 支持79个频点的循环扫描
  - 数据队列管理（10组历史数据）
  - **数据平滑**：实时显示数据为前10次扫描数据的平均值
  - **数据存储**：支持存储10组历史数据，可通过按键切换显示

### 2. 用户界面模块 (`src/generated/`)

- **功能**：基于LVGL的图形用户界面
- **主要组件**：
  - 柱状图显示：实时显示79个频点的RSSI值，支持渐变颜色效果
  - 动态轴标签：X轴显示2402MHz、2441MHz、2480MHz关键频点
  - 状态指示：显示ON/OFF状态和单位标签
  - 按键事件处理：支持KEY2按键控制

### 3. 主程序模块 (`src/main.c`)

- **功能**：系统初始化和任务调度
- **主要任务**：
  - 按键初始化（KEY2）
  - GUI线程启动
  - 蓝牙扫描线程启动
  - 系统主循环
  - 按键状态机处理（支持短按和长按）

## 按键功能说明

- **KEY2**：多功能按键
  - **短按**：开始/停止扫描切换
  - **长按**：历史数据浏览（向前翻页）

## 界面特性

- **柱状图**：79个频点的实时RSSI值显示
- **轴标签**：X轴显示关键频点（2402MHz、2441MHz、2480MHz）
- **状态显示**：顶部显示ON/OFF状态指示

## 运行效果
![image](assets/img.jpg)

### 环境要求

- SiFli-SDK开发环境
- RT-Thread操作系统
- GUI-Guider工具（用于界面设计）
- SF32LB52x芯片开发板

## 构建说明

1. 配置项目：使用`project/Kconfig`进行内核配置
2. 构建项目：使用SCons构建系统
3. 烧录程序：使用提供的下载脚本

## 参考文档

- [SiFli-SDK 快速入门](https://docs.sifli.com/projects/sdk/latest/sf32lb52x/quickstart/index.html)
- [RT-Thread 文档](https://www.rt-thread.org/document/site/)
- [LVGL 图形库文档](https://docs.lvgl.io/latest/en/html/)

## 技术支持

如有任何技术疑问，请在GitHub上提出 [issue](https://github.com/SiFliSparks/RadiationMonitor/issues)
            
      
