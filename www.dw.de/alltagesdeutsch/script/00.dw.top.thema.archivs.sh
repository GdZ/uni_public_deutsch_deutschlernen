#!/bin/bsh
ATD_URL=http://www.dw.com/de/deutsch-lernen/alltagsdeutsch/s-9214
ATD_FILE="01_archivs"
ATD_LOG="01_log"

FT_ANTWORTEN_PDF="alltagsdeutsch-"
FT_ANTWORTEN_NOPAGE="archiv-"
FT_ARCHIVS_PAGE="alltagsdeutsch-archiv-"

rm -rvf ${ATD_FILE} ${ATD_LOG} de
wget ${ATD_URL} -o ${ATD_LOG} -O ${ATD_FILE};

## create folder
echo "GET PDF --------------"
cat ${ATD_FILE} | grep ${FT_ANTWORTEN_PDF} | grep -v ${FT_ANTWORTEN_NOPAGE} | cut -d'"' -f 2 | xargs -n 1 echo www.dw.de$1 | sed s/[[:space:]]//g

## get pdf
echo "CREATE FOLDER --------------"
cat ${ATD_FILE} | grep ${FT_ARCHIVS_PAGE} | cut -d'"' -f 2 | xargs -n 1 echo .$1 | sed s/[[:space:]]//g | cut -d'/' -f3 | xargs mkdir -p
# cat ${ATD_FILE} | grep ${FT_ARCHIVS_PAGE} | cut -d'"' -f 2 | xargs -n 1 `getFiles $1`
echo "MAKE PAGE URL --------"
cat ${ATD_FILE} | grep ${FT_ARCHIVS_PAGE} | cut -d'"' -f 2 | xargs -n 1 echo www.dw.de$1 | sed s/[[:space:]]//g
# clear
# mv de/* .; rm -rvf de;
