#!/bin/bash

dir=`greadlink -f ${BASH_SOURCE[0]} | xargs dirname`

install() {
    while read -r line;
    do sudo tlmgr install "$line";
    done < $dir/tlmgr_list
};

update() {
    tlmgr list --only-installed | awk '//{print substr($2, 0,length($2)-1)}'> $dir/tlmgr_list
};


did_something=0
while getopts iu option

do	case "$option" in
	i)	install;;
	u)	update;;
	[?])	print >&2 "Usage: $0 [-i] [-d] file ..."
		exit 1;;
	esac
done

if [ $did_something == 0 ]; then
    update
fi
