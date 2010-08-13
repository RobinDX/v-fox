# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit kde4-base

MY_PN="todo"
MY_PV="0.4.1"
MY_P="${MY_PN}_${MY_PV}"

DESCRIPTION="KDE4 plasmoid that shows a 'todo' list, using the korganizer 'Active calendar' resource file."
HOMEPAGE="http://kde-look.org/content/show.php/todo+list?content=90706"
SRC_URI="http://linux.wuertz.org/dists/sid/main/source/todo_0.4.1.tar.gz"

LICENSE="GPL-3"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE="debug"

RDEPEND="
	>=kde-base/plasma-workspace-${KDE_MINIMAL}
"

S="${WORKDIR}/${MY_P}"
