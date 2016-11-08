#!/bin/bash
ARCHIV_URL="http://www.netdoktor.de/magazin/archiv/"
PAGE="ARCHIV"

curl ${ARCHIV_URL} -o ${PAGE}.html > ${PAGE}.log
cat ${PAGE}.html | grep 'href="/magazin/archiv/' | awk '{print $3}' | cut -d'"' -f2 | xargs -n 1 echo www.netdoktor.de $1 | sed s/[[:space:]]//g
