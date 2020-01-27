# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="bin test-suite"
inherit eutils haskell-cabal autotools

DESCRIPTION="Happy is a parser generator for Haskell"
HOMEPAGE="http://www.haskell.org/happy/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="alpha amd64 ia64 ppc ppc64 sparc x86"
IUSE="doc"

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	>=dev-haskell/mtl-1.0
	>=dev-lang/ghc-6.10.4
	doc? ( ~app-text/docbook-xml-dtd-4.2
			app-text/docbook-xsl-stylesheets )
"

src_prepare() {
	for f in AttrGrammarParser Parser; do
		# drop broken autogenerated
		mv "dist/build/happy/happy-tmp/$f.hs" src/ || die
		# drop depend on itself, otherwise cabal tries to regenerate it
		rm "src/$f.ly" || die
	done
	use doc && cd doc && eautoconf
}

src_configure() {
	# '--with-happy=false' allows detecting circular
	# depends even when 'happy' is installed in system
	haskell-cabal_src_configure --with-happy=false

	if use doc; then
		# does not like out-of-source builds
		cd doc || die
		econf
	fi
}

src_compile() {
	haskell-cabal_src_compile

	if use doc; then
		emake -C doc -j1
	fi
}

src_install() {
	haskell-cabal_src_install
	if use doc; then
		cd doc || die
		dohtml -r happy/*
		doman "${S}/doc/happy.1"
	fi
}