#!/usr/bin/env bash
# Copyright (C) 2018 borgified <borgified@gmail.com>
# Copyright (C) 2014 Alexander Keller <github@nycroth.com>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

#------------------------------------------------------------------------

INTERFACE="${INTERFACE:-wlp0s20f3}"

#------------------------------------------------------------------------

# As per #36 -- It is transparent: e.g. if the machine has no battery or wireless
# connection (think desktop), the corresponding block should not be displayed.
[[ ! -d /sys/class/net/${INTERFACE}/wireless ]] ||
    [[ "$(cat /sys/class/net/$INTERFACE/operstate)" = 'down' ]] && echo "n/a" && exit

#------------------------------------------------------------------------

ESSID=$(/sbin/iwconfig $INTERFACE | perl -n -e'/ESSID:"(.*?)"/ && print $1')

#------------------------------------------------------------------------

echo $ESSID # full text
#echo $ESSID # short text
