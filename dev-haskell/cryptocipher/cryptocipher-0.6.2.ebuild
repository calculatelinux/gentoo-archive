# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Symmetrical block and stream ciphers"
HOMEPAGE="https://github.com/vincenthz/hs-crypto-cipher"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cipher-aes-0.2.3:=[profile?] <dev-haskell/cipher-aes-0.3:=[profile?]
	>=dev-haskell/cipher-blowfish-0.0:=[profile?] <dev-haskell/cipher-blowfish-0.1:=[profile?]
	>=dev-haskell/cipher-camellia-0.0:=[profile?] <dev-haskell/cipher-camellia-0.1:=[profile?]
	>=dev-haskell/cipher-des-0.0:=[profile?] <dev-haskell/cipher-des-0.1:=[profile?]
	>=dev-haskell/cipher-rc4-0.1.3:=[profile?] <dev-haskell/cipher-rc4-0.2:=[profile?]
	>=dev-haskell/crypto-cipher-types-0.0.8:=[profile?] <dev-haskell/crypto-cipher-types-0.1:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"