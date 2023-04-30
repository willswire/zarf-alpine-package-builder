# Contributor: William Walker <w_walker@icloud.com>
# Maintainer: William Walker <w_walker@icloud.com>
pkgname=zarf
pkgver=0.26.1
pkgrel=0
pkgdesc="DevSecOps for Air Gap & Limited-Connection Systems"
url="https://zarf.dev/"
arch="aarch64"
license="Apache-2.0"
makedepends="go nodejs"
source="$pkgname-v$pkgver.tar.gz::https://github.com/defenseunicorns/zarf/archive/refs/tags/v$pkgver.tar.gz"
builddir="$srcdir/$pkgname-$pkgver/"

build() {
	make ensure-ui-build-dir
	make build-cli-linux CLI_VERSION="v$pkgver" GIT_SHA="6ef3b49"
}

check() {
	# $srcdir/$pkgname-$pkgver/build/zarf version
	$srcdir/$pkgname-$pkgver/build/zarf-arm version
}

package() {
	mkdir -p $pkgdir/usr/bin/
	# cp $srcdir/$pkgname-$pkgver/build/zarf $pkgdir/usr/local/zarf
	cp $srcdir/$pkgname-$pkgver/build/zarf-arm $pkgdir/usr/bin/zarf
}

sha512sums="6766699cac6508cad666a3043c2fedb64f5d726d98c9e00f8a14793d687244f9e61b68cfba664ae11dbc484369b129d449a5142d94692eb44a0a77e735fe0569  zarf-v0.26.1.tar.gz"
