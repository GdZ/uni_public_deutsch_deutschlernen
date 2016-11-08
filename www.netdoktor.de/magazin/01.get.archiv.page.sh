#!/bin/bash
FILTER_DATE="<small>"
FILTER_HTML="boxHeadline newsArchiv"
getArtikel()
{
	page_url=$1
	folder=$2
	mkdir -p ${folder}
	curl ${page_url} -o ${folder}.html
	cat ${folder}.html | grep "${FILTER_DATE}" > ${folder}/${folder}.dat
	cat ${folder}.html | grep "${FILTER_HTML}" | cut -d'"' -f 2 > ${folder}/${folder}.page.urls
	cp -vf ${folder}/${folder}.page.urls ${folder}/02.${folder}.page.urls.sh
}

# test
# getArtikel "www.netdoktor.de/magazin/archiv/2016/" "2016"
# release
getArtikel "www.netdoktor.de/magazin/archiv/2016/" "2016" &
getArtikel "www.netdoktor.de/magazin/archiv/2015/" "2015" &
getArtikel "www.netdoktor.de/magazin/archiv/2014/" "2014" &
getArtikel "www.netdoktor.de/magazin/archiv/2013/" "2013" &
getArtikel "www.netdoktor.de/magazin/archiv/2012/" "2012" &
getArtikel "www.netdoktor.de/magazin/archiv/2011/" "2011" &
getArtikel "www.netdoktor.de/magazin/archiv/2010/" "2010" &
getArtikel "www.netdoktor.de/magazin/archiv/2009/" "2009" &
getArtikel "www.netdoktor.de/magazin/archiv/2008/" "2008" &
getArtikel "www.netdoktor.de/magazin/archiv/2007/" "2007" &
getArtikel "www.netdoktor.de/magazin/archiv/2006/" "2006" &
getArtikel "www.netdoktor.de/magazin/archiv/2005/" "2005" &
getArtikel "www.netdoktor.de/magazin/archiv/2004/" "2004" &
getArtikel "www.netdoktor.de/magazin/archiv/2003/" "2003" &
getArtikel "www.netdoktor.de/magazin/archiv/2002/" "2002" &
getArtikel "www.netdoktor.de/magazin/archiv/2001/" "2001" &
getArtikel "www.netdoktor.de/magazin/archiv/2000/" "2000" &
getArtikel "www.netdoktor.de/magazin/archiv/1999/" "1999" &