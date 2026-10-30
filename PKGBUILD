# Maintainer: Munique Feitoza <Munique-Feitoza at users dot noreply dot github dot com>
pkgname=nouveau-boost
pkgver=0.1.0
pkgrel=1
pkgdesc="One-click video freeze fixer, plain-English health doctor, and performance tuner for legacy NVIDIA GPUs on Linux (Nouveau DRM)"
arch=('x86_64' 'aarch64')
url="https://github.com/Munique-Feitoza/nouveau-boost"
license=('GPL-2.0-only')
depends=('gcc-libs' 'glibc' 'systemd')
makedepends=('cargo' 'git')
optdepends=('nouveau-fw: NVIDIA Falcon video microcode for hardware VA-API decoding')
source=("$pkgname-$pkgver::git+https://github.com/Munique-Feitoza/nouveau-boost.git#branch=main")
sha256sums=('SKIP')

prepare() {
  cd "$pkgname-$pkgver"
  export RUSTUP_TOOLCHAIN=stable
  cargo fetch --locked --target "$(rustc -vV | sed -n 's/host: //p')"
}

build() {
  cd "$pkgname-$pkgver"
  export RUSTUP_TOOLCHAIN=stable
  export CARGO_TARGET_DIR=target
  cargo build --frozen --release
}

package() {
  cd "$pkgname-$pkgver"
  install -Dm755 "target/release/$pkgname" "$pkgdir/usr/bin/$pkgname"
  install -Dm644 "LICENSE" "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
  install -Dm644 "README.md" "$pkgdir/usr/share/doc/$pkgname/README.md"
}
