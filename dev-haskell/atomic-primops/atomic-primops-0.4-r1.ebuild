# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib haddock hoogle hscolour profile"
inherit haskell-cabal

DESCRIPTION="A safe approach to CAS and other atomic ops in Haskell"
HOMEPAGE="https://github.com/rrnewton/haskell-lockfree-queue/wiki"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

RDEPEND="dev-haskell/bits-atomic:=[profile?]
		dev-haskell/cabal:=[profile?]
		dev-haskell/primitive:=[profile?]
		>=dev-lang/ghc-7.4.1:="
DEPEND="${RDEPEND}
		profile? ( !<dev-haskell/cabal-1.17 )
		>=dev-haskell/cabal-1.8"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag debug debug)
}