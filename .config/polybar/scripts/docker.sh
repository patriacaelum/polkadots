#! /bin/bash
# panel-docker.sh - Docker panel
#
# A script that displays the number of active docker containers and their names

if ! command -v docker &> /dev/null; then
	echo "Docker doesn't exist" 1>&2
fi

count=$(docker ps -q | wc -l | sed -r 's/^0$//g' 2> /dev/null)

if (( count > 0 )); then
	data=$(docker ps 2> /dev/null | awk 'NR>1' | awk '{ print $2 }' | tr '\n' '|')
	data=${data::-1}
	echo " ${data:0:20} ($count)"
else
	echo
fi
