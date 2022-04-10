# Maintainer: Adrian Lopez <zeioth@hotmail.com>

pkgname=wofi-calc
pkgver=1.0
pkgrel=2
pkgdesc="A simple calculator for wofi, inspired in rofi-calc."
arch=('any')
url='https://github.com/Zeioth/wofi-calc'
license=('MIT')
depends=(wofi libqalculate)
makedepends=(wofi libqalculate)
provides=(wofi-calc)
conflicts=(wofi-calc-git)
source=(https://raw.githubusercontent.com/Zeioth/wofi-calc/main/wofi-calc.sh)
sha512sums=('34592bacfa7b58f8f327095fada0fa7d4d1b79f975994e4c6e9679ebe97c8355ad02edee357835c05977fb2c6ebb87f3db4cbc363446a67d8dbf316740a080b0')
validpgpkeys=()

pkgver() {
  cd "${_pkgname}"
  printf "1.0.r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
  mkdir -p "$pkgdir"/usr/bin
  install -m755 "${srcdir}"/wofi-calc/wofi-calc.sh "$pkgdir"/usr/bin/wofi-calc
}
