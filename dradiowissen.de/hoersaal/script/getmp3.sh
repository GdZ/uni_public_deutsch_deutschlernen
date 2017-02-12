#!/bin/bash
MAX_FLAG=31
SCRIPT=`pwd`
OUT="`pwd`/../../out/hoersaal"

## step 1
getHtml()
{
	echo "======================================"
	mkdir -p ${OUT}/html
	cd ${OUT}/html
	url_base="http://dradiowissen.de/hoersaal/"
	for (( i=1; i<=${MAX_FLAG}; i++ ));
	do
		page="p$i"
		echo wget "${url_base}${page}" -o "${page}.log" -O "${page}.html"
		wget "${url_base}${page}" -o "${page}.log" -O "${page}.html" &
	done
	cd ${SCRIPT}
	echo "[SUCCESS!!!] ----------"
}
## step 2
getMP3Urls()
{
	echo "========================================"
	cd ${OUT}/html
	cat *.html | grep '<button' | grep 'data-mp3' > cut.html.log
	cat cut.html.log | grep '<button' | grep 'data-mp3' | cut -d'=' -f 3 | awk '{print $1}' | cut -d'"' -f2 > mp3s.lst
	cd ${SCRIPT}
	echo "[SUCCESS!!!] get mp3 and pdf success!! ----------------------"
}
## step 3
getMP3()
{
	echo wget -i ${OUT}/html/mp3s.lst -o mp3s.log
	cd ${OUT}
	pwd
	wget -i ${OUT}/html/mp3s.lst -o mp3s.log
}
## main task
op=0
while [[ ${op} ]]; do
	echo "
======================================
    1. get htmls
    2. get mp3 urls
    3. get mp3 files
    *. exit
======================================"
	read -p "Please input : " op
	echo "op: $op"
	case ${op} in
		'1')
			getHtml
			;;
		'2')
			getMP3Urls
			;;
		'3')
			getMP3
			;;
		*)
			read -p "[INFO] Press any key to exit...."
			break;
			;;
	esac
done
