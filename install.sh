#!/bin/bash
if [ -f /etc/debian_version ]; then
	echo "Debian/Ubuntu"
elif [ -f /etc/arch-release ]; then
	echo "Arch Linux"
elif [ -f /etc/redhat-release ] || [ -f /etc/system-release-cpe ]; then
	echo "Red Hat / CentOS"
elif [ -f /etc/SUSE-brand ] || [ -f /etc/SuSE-brand ] || [ -f /etc/SuSE-release ] || [ -d /etc/susehelp.d ]; then
	echo "SuSE"
elif [ "$OPERATING_SYSTEM_TYPE" = "FreeBSD" ]; then
	echo "FreeBSD"
elif [ "$OPERATING_SYSTEM_TYPE" = "OpenBSD" ]; then
	echo "OpenBSD"
elif [ "$OPERATING_SYSTEM_TYPE" = "Cygwin" ]; then
	echo "Cygwin"
fi
