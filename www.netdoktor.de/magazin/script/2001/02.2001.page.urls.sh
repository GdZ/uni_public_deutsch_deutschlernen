getInhalt()
{
	inhalt_url=$1
	name=$2
	echo wget ${inhalt_url} -o ${name}.log -O ${name}.html
	wget ${inhalt_url} -o ${name}.log -O ${name}.html
}

# test
getInhalt "http://www.netdoktor.de/magazin/embryonale-und-adulte-stammzellen/" "embryonale-und-adulte-stammzellen" &
getInhalt "http://www.netdoktor.de/magazin/seitensprung-mit-narrenkappe/" "seitensprung-mit-narrenkappe" &
