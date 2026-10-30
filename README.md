# ⚡ Nouveau-Boost (`nouveau-boost`)

[![build result](https://build.opensuse.org/projects/home:nitroglicerina/packages/nouveau-boost/badge.svg?type=default)](https://build.opensuse.org/package/show/home:nitroglicerina/nouveau-boost)
[![Download Package](https://img.shields.io/badge/OpenBuildService-Download%20Packages-73ba25?logo=opensuse&logoColor=white)](https://software.opensuse.org/download.html?project=home%3Anitroglicerina&package=nouveau-boost)
[![License: GPL-2.0-only](https://img.shields.io/badge/License-GPL--2.0--only-blue.svg)](LICENSE)

**One-click video freeze fixer, plain-English health doctor, and performance tuner for legacy NVIDIA GPUs on Linux (GeForce 200, 300, 400, 500, 600, 700, 800, 900, and 1000 series).**

Built in **Rust** by **[Munique Feitoza](https://github.com/Munique-Feitoza)** · Licensed under **GPL-2.0-only** (same license as the Linux Kernel).

---

## 💡 Who is this for?

If you use Linux with an older NVIDIA graphics card (Tesla, Fermi, Kepler, Maxwell, or Pascal) and experience:
- **PC freezing or locking up** while watching YouTube, Netflix, or Twitch;
- **Stuttering video playback** because your browser is decoding video on the CPU instead of the GPU;
- **Slow desktop or disabled 3D acceleration** because NVIDIA's video microcode (*Falcon firmware*) isn't installed by default on Linux.

You **do not need to know Linux commands or kernel internals**. `nouveau-boost` checks your graphics card, explains everything in plain English, and fixes it with **one key press**!

---

## 📦 Officially Packaged Linux Distributions (OpenBuildService)

`nouveau-boost` is built and distributed natively across major Linux repositories via **[OpenBuildService (`home:nitroglicerina/nouveau-boost`)](https://build.opensuse.org/package/show/home:nitroglicerina/nouveau-boost)**:

| Distribution | Version / Branch | Format | Package Manager | Status |
| :--- | :--- | :--- | :--- | :--- |
| **Ubuntu** | `xUbuntu 24.04 LTS` | `.deb` | `apt` | ✅ Available |
| **Debian** | `Debian 12 (Bookworm)` | `.deb` | `apt` | ✅ Available |
| **Debian** | `Debian Testing (Trixie)` | `.deb` | `apt` | ✅ Available |
| **Fedora** | `Fedora 41` | `.rpm` | `dnf` | ✅ Available |
| **Fedora** | `Fedora Rawhide` | `.rpm` | `dnf` | ✅ Available |
| **Arch Linux** | `Arch (Rolling)` | `.pkg.tar.zst` | `pacman` | ✅ Available |
| **openSUSE** | `openSUSE Tumbleweed` | `.rpm` | `zypper` | ✅ Available |

👉 **[Click here for Official Repository & 1-Click Package Downloads (`software.opensuse.org`)](https://software.opensuse.org/download.html?project=home%3Anitroglicerina&package=nouveau-boost)**

---

## 🚀 Quick Installation

### Option 1: Official OpenBuildService Repositories (`apt` / `dnf` / `zypper` / `pacman`)

#### Ubuntu 24.04 / Debian 12 / Debian Testing (`apt`)
```bash
# Example for Ubuntu 24.04 (replace xUbuntu_24.04 with Debian_12 or Debian_Testing if on Debian):
echo 'deb http://download.opensuse.org/repositories/home:/nitroglicerina/xUbuntu_24.04/ /' | sudo tee /etc/apt/sources.list.d/home:nitroglicerina.list
curl -fsSL https://download.opensuse.org/repositories/home:nitroglicerina/xUbuntu_24.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_nitroglicerina.gpg > /dev/null
sudo apt update && sudo apt install nouveau-boost
```

#### Fedora 41 / Fedora Rawhide (`dnf`)
```bash
sudo dnf config-manager addrepo --from-repofile=https://download.opensuse.org/repositories/home:nitroglicerina/Fedora_41/home:nitroglicerina.repo
sudo dnf install nouveau-boost
```

#### openSUSE Tumbleweed (`zypper`)
```bash
sudo zypper addrepo https://download.opensuse.org/repositories/home:nitroglicerina/openSUSE_Tumbleweed/home:nitroglicerina.repo
sudo zypper refresh && sudo zypper install nouveau-boost
```

#### Arch Linux (`pacman` / `makepkg`)
Download the pre-built `.pkg.tar.zst` from the [OBS Arch repository](https://download.opensuse.org/repositories/home:/nitroglicerina/Arch/x86_64/) or build with `makepkg`:
```bash
git clone https://github.com/Munique-Feitoza/nouveau-boost.git
cd nouveau-boost
makepkg -si
```

---

### Option 2: Direct Package Download (GitHub Releases)

#### Debian, Ubuntu, Linux Mint, Pop!_OS (`.deb`)
```bash
curl -sLO https://github.com/Munique-Feitoza/nouveau-boost/releases/latest/download/nouveau-boost_0.1.0-1_amd64.deb
sudo apt install ./nouveau-boost_0.1.0-1_amd64.deb
```

#### Fedora, RHEL, openSUSE (`.rpm`)
```bash
sudo dnf install https://github.com/Munique-Feitoza/nouveau-boost/releases/latest/download/nouveau-boost-0.1.0-1.x86_64.rpm
```

#### Universal One-Command Installer (Any Linux)
```bash
git clone https://github.com/Munique-Feitoza/nouveau-boost.git
cd nouveau-boost
bash install.sh
```

Once installed, open **Nouveau-Boost** directly from your **Linux Application Menu** (search for *Nouveau-Boost*) or run:
```bash
nouveau-boost
```

---

## 🎮 Simple Controls (Inside the App)

You only need 3 keys:
- **Press `[1]` — Auto-Fix My GPU (1-Click):** Automatically downloads/installs missing NVIDIA Falcon video firmware, enables 3D hardware acceleration, and configures Firefox (`VA-API` enabled + heavy `AV1` software decoding disabled) so videos never freeze your PC.
- **Press `[2]` — Fast Mode (Turbo):** Switches your GPU clocks to maximum performance (`P-State 0f`).
- **Press `[3]` — Quiet / Eco Mode:** Lowers GPU power consumption and heat (`P-State 07`).
- **Press `[q]` — Quit.**

---

## 📜 License

Distributed under the **GNU General Public License v2.0 only (GPL-2.0-only)** — see [LICENSE](LICENSE) for details.
