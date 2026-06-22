# T527 MicroPC

Language: English | [中文](README_CN.md)

T527 MicroPC is a MicroPC / IIoT development board project based on the Allwinner T527 platform. It uses an 8-layer high-speed PCB design and targets embedded Linux, industrial gateways, robot control, edge AI control hosts, and related application scenarios.

This project provides hardware design files, system adaptation notes, and SDK / bootloader adaptation entry points. It can be used as a reference for secondary development, system porting, and product prototype validation on the T527 platform.

<p align="center">
  <img src="Hardware/3D.png" alt="T527 MicroPC 3D View" width="48%">
  <img src="Hardware/PCB.png" alt="T527 MicroPC PCB Layout" width="48%">
</p>

## Features

- Based on the Allwinner T527 SoC for high-performance embedded Linux and IIoT scenarios.
- 8-layer high-speed PCB design with attention to signal integrity, interface expansion, and manufacturability.
- Supports the Avaota A1 image ecosystem and can be adapted to Mainline Linux, Ubuntu CLI, Armbian, OpenWrt, and other systems.
- Suitable for OpenWrt industrial gateways, ROS robot systems, edge AI control hosts, industrial acquisition, and control terminals.
- Provides hardware production files, schematic, 3D structure files, and system adaptation directories for quick evaluation and secondary development.
- Linked with the Linux_BSP project for unified maintenance of the T527 BSP and board-level adaptation content.

## Directory Structure

```text
T527_MicroPC/
├── Hardware/
│   ├── 3D.png
│   ├── PCB.png
│   ├── 3D_PCB1_3_2026-06-18.step
│   ├── Gerber_PCB1_3_2026-06-18.zip
│   ├── ProPrj_T527 MicroPC_2026-06-18.epro2
│   └── SCH_T527 MicroPC_2026-06-18.pdf
├── SDK/
│   ├── AvaotaOS
│   ├── TinaAIOT_SDK
│   └── SyterKit
└── README.md
```

## Hardware Resources

The `Hardware` directory contains hardware design and production files for T527 MicroPC:

- `SCH_T527 MicroPC_2026-06-18.pdf`: schematic file.
- `Gerber_PCB1_3_2026-06-18.zip`: PCB production Gerber file.
- `3D_PCB1_3_2026-06-18.step`: mechanical 3D STEP file.
- `ProPrj_T527 MicroPC_2026-06-18.epro2`: EDA project source file.
- `3D.png` / `PCB.png`: board 3D preview and PCB preview images.

## Software and System Adaptation

The `SDK` directory is used for software adaptation content related to T527 MicroPC:

- `SDK/AvaotaOS`: AvaotaOS system adaptation entry point.
- `SDK/TinaAIOT_SDK`: Tina AIoT SDK adaptation entry point.
- `SDK/SyterKit`: bootloader / SyterKit adaptation entry point.

The current goal of this project is to provide a complete reference from hardware to the system boot chain for T527 MicroPC, including board-level configuration, image adaptation, bootloader adaptation, and BSP-linked maintenance.

## Related Projects

- [BSP_T527 / Linux_BSP](https://github.com/Nopiskl/Linux_BSP): T527-related BSP, kernel, device tree, and board-level system adaptation project.
- [AvaotaOS-main / AvaotaOS](https://github.com/AvaotaSBC/AvaotaOS): AvaotaOS mainline system project, usable for T527 MicroPC system image and software ecosystem adaptation.

## Typical Applications

- OpenWrt multi-port gateway or industrial network terminal.
- Ubuntu CLI / Armbian embedded development environment.
- ROS robot control and sensor data processing platform.
- Edge AI inference control, vision acquisition, and device management host.
- IIoT data acquisition, protocol conversion, and field control node.

## Current Status

- Hardware design files have been organized.
- Schematic, Gerber, STEP, and PCB preview resources are provided.
- AvaotaOS, TinaAIOT SDK, and SyterKit adaptation directories have been planned.
- The project has been linked with BSP_T527 / Linux_BSP, and future adaptation content will continue to be updated around BSP and system images.
