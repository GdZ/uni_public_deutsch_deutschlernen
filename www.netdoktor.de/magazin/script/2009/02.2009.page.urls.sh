getInhalt()
{
	inhalt_url=$1
	name=$2
	echo wget ${inhalt_url} -o ${name}.log -O ${name}.html
	wget ${inhalt_url} -o ${name}.log -O ${name}.html
}

# test
getInhalt "http://www.netdoktor.de/magazin/internetsucht-gefangen-in-der-pixel-parallelwelt/" "internetsucht-gefangen-in-der-pixel-parallelwelt" &
getInhalt "http://www.netdoktor.de/magazin/depressive-spitzensportler-leiden-ist-tabu/" "depressive-spitzensportler-leiden-ist-tabu" &
getInhalt "http://www.netdoktor.de/magazin/trinkende-schwangere-foetus-mit-promille/" "trinkende-schwangere-foetus-mit-promille" &
getInhalt "http://www.netdoktor.de/magazin/falsche-brustkrebsdiagnosen-daran-muessen-wir-arbeiten/" "falsche-brustkrebsdiagnosen-daran-muessen-wir-arbeiten" &
getInhalt "http://www.netdoktor.de/magazin/brustkrebs-screening-niedrige-teilnahmerate-ist-kritikpunkt/" "brustkrebs-screening-niedrige-teilnahmerate-ist-kritikpunkt" &
getInhalt "http://www.netdoktor.de/magazin/nabelschnurblut-hoffnung-aus-dem-eis/" "nabelschnurblut-hoffnung-aus-dem-eis" &
getInhalt "http://www.netdoktor.de/magazin/transplantation-operation-schweineherz/" "transplantation-operation-schweineherz" &
getInhalt "http://www.netdoktor.de/magazin/magenbypass-der-ausgetrickste-darm/" "magenbypass-der-ausgetrickste-darm" &
getInhalt "http://www.netdoktor.de/magazin/netdoktor-de-blog/" "netdoktor-de-blog" &
getInhalt "http://www.netdoktor.de/magazin/schizophrenie-zwischen-wahn-und-wirklichkeit/" "schizophrenie-zwischen-wahn-und-wirklichkeit" &
getInhalt "http://www.netdoktor.de/magazin/schizophrenie-die-kreativen-geister/" "schizophrenie-die-kreativen-geister" &
getInhalt "http://www.netdoktor.de/magazin/down-syndrom-druck-auf-schwangere-ausgeuebt/" "down-syndrom-druck-auf-schwangere-ausgeuebt" &
getInhalt "http://www.netdoktor.de/magazin/bela-einfach-ein-super-typ/" "bela-einfach-ein-super-typ" &
getInhalt "http://www.netdoktor.de/magazin/das-deprimierte-herz/" "das-deprimierte-herz" &
getInhalt "http://www.netdoktor.de/magazin/viele-selbstdiagnosen-sind-falsch/" "viele-selbstdiagnosen-sind-falsch" &
getInhalt "http://www.netdoktor.de/magazin/doktor-china-professor-medizin-teil-2/" "doktor-china-professor-medizin-teil-2" &
getInhalt "http://www.netdoktor.de/magazin/doktor-china-professor-medizin/" "doktor-china-professor-medizin" &
getInhalt "http://www.netdoktor.de/magazin/brustkrebs-interview-ich-will-das-nicht/" "brustkrebs-interview-ich-will-das-nicht" &
getInhalt "http://www.netdoktor.de/magazin/der-gezaehmte-tiger/" "der-gezaehmte-tiger" &
