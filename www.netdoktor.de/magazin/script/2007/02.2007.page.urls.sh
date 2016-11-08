getInhalt()
{
	inhalt_url=$1
	name=$2
	echo wget ${inhalt_url} -o ${name}.log -O ${name}.html
	wget ${inhalt_url} -o ${name}.log -O ${name}.html
}

# test
getInhalt "http://www.netdoktor.de/magazin/doppel-dick/" "doppel-dick" &
getInhalt "http://www.netdoktor.de/magazin/die-kohlenhydrat-sparer/" "die-kohlenhydrat-sparer" &
getInhalt "http://www.netdoktor.de/magazin/hypochondrie-krank-vor-angst/" "hypochondrie-krank-vor-angst" &
