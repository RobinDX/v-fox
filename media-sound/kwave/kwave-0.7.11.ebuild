# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /cvsroot/kwave/kwave/kwave.ebuild,v 1.9 2006/06/05 13:30:40 the Exp $

inherit kde flag-o-matic

DESCRIPTION="Kwave is a sound editor for KDE."
HOMEPAGE="http://kwave.sourceforge.net/"
SRC_URI="mirror://sourceforge/kwave/${P}-1.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~x86 ~amd64 ~ppc"
IUSE="arts alsa doc flac mp3 ogg oss mmx"

RDEPEND="arts? ( kde-base/arts )
	alsa? ( media-libs/alsa-lib )
	media-libs/audiofile
	mp3? ( media-libs/id3lib media-libs/libmad )
	ogg? ( media-libs/libogg media-libs/libvorbis )
	flac? ( media-libs/flac )
	sci-libs/gsl"
DEPEND="${RDEPEND}
	>=dev-util/cmake-2.4.6
	|| ( kde-base/kdesdk-misc kde-base/kdesdk )
	app-text/recode
	media-gfx/imagemagick"
if use arts ; then
	DEPEND="${DEPEND}
	|| ( kde-base/kdemultimedia-arts kde-base/kdemultimedia )"
fi
need-kde 3.4

src_compile() {
	use mmx && append-flags "-mmmx"

	myconf+=" -DWITH_BUILTIN_LIBAUDIOFILE=OFF"
	use alsa  |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        