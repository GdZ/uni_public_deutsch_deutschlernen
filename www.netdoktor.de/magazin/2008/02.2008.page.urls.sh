getInhalt()
{
	inhalt_url=$1
	name=$2
	echo wget ${inhalt_url} -o ${name}.log -O ${name}.html
	wget ${inhalt_url} -o ${name}.log -O ${name}.html
}

# test
getInhalt "http://www.netdoktor.de/magazin/chemobrain-das-chemiemeer-im-kopf/" "chemobrain-das-chemiemeer-im-kopf" &
getInhalt "http://www.netdoktor.de/magazin/migraene-stuermisches-familienleben/" "migraene-stuermisches-familienleben" &
getInhalt "http://www.netdoktor.de/magazin/die-erbgutkontrolleure/" "die-erbgutkontrolleure" &
getInhalt "http://www.netdoktor.de/magazin/medizin-nobelpreis-deutscher-krebsforscher-ausgezeichnet/" "medizin-nobelpreis-deutscher-krebsforscher-ausgezeichnet" &
getInhalt "http://www.netdoktor.de/magazin/einmal-veggie-und-zurueck/" "einmal-veggie-und-zurueck" &
getInhalt "http://www.netdoktor.de/magazin/akromegalie-unheimliche-verwandlung/" "akromegalie-unheimliche-verwandlung" &
getInhalt "http://www.netdoktor.de/magazin/jaeger-der-vergessenen-arzneien/" "jaeger-der-vergessenen-arzneien" &
getInhalt "http://www.netdoktor.de/magazin/der-methusalem-code/" "der-methusalem-code" &
getInhalt "http://www.netdoktor.de/magazin/heilung-nach-noten/" "heilung-nach-noten" &
getInhalt "http://www.netdoktor.de/magazin/baby-op-im-bauch/" "baby-op-im-bauch" &
