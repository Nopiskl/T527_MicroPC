# AvaotaOS 构建框架

语言：[English](README.md) | 中文

<a href="#avaota-build"><img src="./doc/pics/main.png" alt="main.png" width="100%"></a>

## 信息

```plaintext
username: avaota
password: avaota

username: root
password: avaota
```

## 预构建镜像下载

可以从 [releases](https://github.com/AvaotaSBC/AvaotaOS/releases) 页面下载预构建镜像。

预构建镜像文件格式为 `UBUNTU_VERSION-SYS_TYPE-ARCH-BOARD.img.xz`。

## 如何构建

1. 克隆 AvaotaOS 仓库：

```plaintext
git clone --depth=1 https://github.com/AvaotaSBC/AvaotaOS && cd AvaotaOS
```

2. 运行构建脚本：

```plaintext
sudo ./build_all.sh
```

也可以提供构建参数：

```plaintext
sudo ./build_all.sh \
    -b <BOARD> \
    -m <MIRROR> \
    -v <SYSTEM_DISTRO> \
    -t <SYS_TYPE> \
    -u <SYS_USER> \
    -p <USER_PASSWORD> \
    -s <ROOT_PASSWORD> \
    -k <IF_MENUCONFIG> \
    -g <KERNEL_TARGET> \
    -i <GITHUB_MIRROR> \
    -o <KERNEL_ONLY> \
    -e <USE_CCACHE>
```

## 构建参数

- `BOARD`：MicroPC

- `SYSTEM_DISTRO`：
  1. Ubuntu-20.04：focal
  2. Ubuntu-22.04：jammy
  3. Ubuntu-24.04：noble
  4. Debian-11：bullseye
  5. Debian-12：bookworm
  6. Debian-13：trixie
  7. Debian-13：trixie

- `MIRROR`：
  - 示例：`http://ports.ubuntu.com`
  - 示例：`http://deb.debian.org/debian`
  - 示例：`https://mirrors.ustc.edu.cn/ubuntu-ports`
  - 示例：`https://mirrors.ustc.edu.cn/debian`

- `SYS_TYPE`：
  1. cli
  2. xfce
  3. gnome
  4. kde
  5. lxqt

- `SYS_USER`：（默认：avaota）

- `USER_PASSWORD`：（默认：avaota）

- `ROOT_PASSWORD`：（默认：avaota）

- `KERNEL_MENUCONFIG`：
  1. yes
  2. no
  
- `KERNEL_TARGET`：
  1. bsp
  2. mainline-lts
  3. mainline-latest

- `LOCAL`：
  - 不从 Git 源获取和更新 kernel、u-boot/syterkit。
  - 首次运行时不要设置为 `yes`！
  1. yes
  2. no

- `GITHUB_MIRROR`：
  - 示例：`https://mirror.ghproxy.com`

- `KERNEL_ONLY`：（仅构建内核包）
  - 1. yes
  - 2. no
  
- `USE_CCACHE`：
  - 1. yes
  - 2. no

示例：

```plaintext
sudo bash build_all.sh \
    -b MicroPC \
    -m https://mirrors.ustc.edu.cn/ubuntu-ports \
    -v jammy \
    -t cli \
    -u avaota \
    -p avaota \
    -s avaota \
    -k no \
    -i no \
    -o no \
    -e no
```
