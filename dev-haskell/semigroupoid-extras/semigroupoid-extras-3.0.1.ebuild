# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Semigroupoids requiring Haskell extensions"
HOMEPAGE="https://github.com/ekmett/semigroupoid-extras"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/comonad-3:=[profile?]
		>=dev-haskell/distributive-0.2.2:=[profile?]
		>=dev-haskell/groupoids-3:=[profile?]
		>=dev-haskell/semigroupoids-3:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"