#!/usr/bin/env bash
set -e

echo "=================================================================="
echo " ⚡ Nouveau-Boost Automated Installer (Legacy NVIDIA GPUs on Linux)"
echo "=================================================================="
echo ""

if [ -f "Cargo.toml" ] && grep -q "nouveau-boost" Cargo.toml 2>/dev/null; then
    REPO_DIR="$(pwd)"
else
    REPO_DIR="/tmp/nouveau-boost-install"
    rm -rf "$REPO_DIR"
    echo "📥 Downloading Nouveau-Boost..."
    git clone --depth=1 https://github.com/Munique-Feitoza/nouveau-boost.git "$REPO_DIR"
    cd "$REPO_DIR"
fi

if ! command -v cargo >/dev/null 2>&1; then
    echo "📦 Rust/Cargo not found. Installing automatically..."
    if command -v pacman >/dev/null 2>&1; then
        sudo pacman -Sy --noconfirm rust
    elif command -v apt-get >/dev/null 2>&1; then
        sudo apt-get update && sudo apt-get install -y cargo rustc
    elif command -v dnf >/dev/null 2>&1; then
        sudo dnf install -y rust cargo
    fi
fi

echo "🔨 Building Nouveau-Boost..."
cargo build --release

echo "🚀 Installing 'nouveau-boost' to /usr/local/bin..."
sudo install -Dm755 "target/release/nouveau-boost" "/usr/local/bin/nouveau-boost"

# Create desktop launcher so Linux beginners can open it from their Application Menu
DESKTOP_FILE="$HOME/.local/share/applications/nouveau-boost.desktop"
mkdir -p "$HOME/.local/share/applications"
cat > "$DESKTOP_FILE" <<EOF
[Desktop Entry]
Name=Nouveau-Boost (NVIDIA Doctor)
Comment=One-Click Video Freeze Fixer & Tuner for Legacy NVIDIA GPUs on Linux
Exec=nouveau-boost
Icon=video-display
Terminal=true
Type=Application
Categories=System;Settings;HardwareSettings;
EOF

echo ""
echo "✅ DONE! Nouveau-Boost is now installed!"
echo "👉 Open it from your Linux Application Menu ('Nouveau-Boost')"
echo "   or run in terminal: nouveau-boost"
echo ""
