# ⚡ Nouveau-Boost (`nouveau-boost`)

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

## 🚀 One-Command Install

Copy and paste this into your terminal:

```bash
git clone https://github.com/Munique-Feitoza/nouveau-boost.git
cd nouveau-boost
bash install.sh
```

Once installed, you can open **Nouveau-Boost** directly from your **Linux Application Menu** (search for *Nouveau-Boost*) or by typing:

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
