getInhalt()
{
	inhalt_url=$1
	name=$2
	echo wget ${inhalt_url} -o ${name}.log -O ${name}.html
	wget ${inhalt_url} -o ${name}.log -O ${name}.html
}

# test
getInhalt "http://www.netdoktor.de/magazin/darmbakterien-schluessel-zur-gesundheit/" "darmbakterien-schluessel-zur-gesundheit" &
getInhalt "http://www.netdoktor.de/magazin/macht-die-pille-depressiv/" "macht-die-pille-depressiv" &
getInhalt "http://www.netdoktor.de/magazin/die-bauchspeicheldruese-am-guertel/" "die-bauchspeicheldruese-am-guertel" &
getInhalt "http://www.netdoktor.de/magazin/gelenkschmerzen-im-griff/" "gelenkschmerzen-im-griff" &
getInhalt "http://www.netdoktor.de/magazin/wenig-eiweiss-schneller-stoffwechsel/" "wenig-eiweiss-schneller-stoffwechsel" &
getInhalt "http://www.netdoktor.de/magazin/laktoseintoleranz-ist-harmlos/" "laktoseintoleranz-ist-harmlos" &
getInhalt "http://www.netdoktor.de/magazin/verdauung-so-funktioniert-sie/" "verdauung-so-funktioniert-sie" &
getInhalt "http://www.netdoktor.de/magazin/prostatakrebs-ist-der-psa-test-doch-sinnvoll/" "prostatakrebs-ist-der-psa-test-doch-sinnvoll" &
getInhalt "http://www.netdoktor.de/magazin/somatische-intelligenz-essen-nach-lust-und-ekel/" "somatische-intelligenz-essen-nach-lust-und-ekel" &
getInhalt "http://www.netdoktor.de/magazin/nagelpilz-ist-mehr-als-ein-kosmetisches-problem/" "nagelpilz-ist-mehr-als-ein-kosmetisches-problem" &
getInhalt "http://www.netdoktor.de/magazin/der-vermeidbare-tod/" "der-vermeidbare-tod" &
getInhalt "http://www.netdoktor.de/magazin/sprechen-sie-das-thema-suizid-offen-an/" "sprechen-sie-das-thema-suizid-offen-an" &
getInhalt "http://www.netdoktor.de/magazin/wir-sind-spezialisten-fuer-lebensqualitaet/" "wir-sind-spezialisten-fuer-lebensqualitaet" &
getInhalt "http://www.netdoktor.de/magazin/angst-vor-dem-lebensretter/" "angst-vor-dem-lebensretter" &
getInhalt "http://www.netdoktor.de/magazin/diese-krankheit-soll-mein-leben-nicht-beherrschen/" "diese-krankheit-soll-mein-leben-nicht-beherrschen" &
getInhalt "http://www.netdoktor.de/magazin/wenn-sie-nicht-vorsorgen-entscheidet-jemand-anderes/" "wenn-sie-nicht-vorsorgen-entscheidet-jemand-anderes" &
getInhalt "http://www.netdoktor.de/magazin/bei-frauen-muss-man-genauer-hinschauen/" "bei-frauen-muss-man-genauer-hinschauen" &
getInhalt "http://www.netdoktor.de/magazin/puste-test-rasterfahndung-nach-krankheiten/" "puste-test-rasterfahndung-nach-krankheiten" &
getInhalt "http://www.netdoktor.de/magazin/strom-fuer-die-augen/" "strom-fuer-die-augen" &
getInhalt "http://www.netdoktor.de/magazin/die-gerettete-brust/" "die-gerettete-brust" &
getInhalt "http://www.netdoktor.de/magazin/man-muss-mit-seinen-haaren-haushalten/" "man-muss-mit-seinen-haaren-haushalten" &
getInhalt "http://www.netdoktor.de/magazin/ausdauersport-doch-kein-hoeheres-risiko-fuer-herzschaeden/" "ausdauersport-doch-kein-hoeheres-risiko-fuer-herzschaeden" &
getInhalt "http://www.netdoktor.de/magazin/olympia-koennen-die-spiele-die-ausbreitung-beschleunigen/" "olympia-koennen-die-spiele-die-ausbreitung-beschleunigen" &
getInhalt "http://www.netdoktor.de/magazin/im-dschungel-der-gesundheits-apps/" "im-dschungel-der-gesundheits-apps" &
getInhalt "http://www.netdoktor.de/magazin/augen-lasern-da-kommt-das-licht/" "augen-lasern-da-kommt-das-licht" &
getInhalt "http://www.netdoktor.de/magazin/zuckerkrank-durch-fettes-essen/" "zuckerkrank-durch-fettes-essen" &
getInhalt "http://www.netdoktor.de/magazin/konzertbesuch-ohrstoepsel-einpacken/" "konzertbesuch-ohrstoepsel-einpacken" &
getInhalt "http://www.netdoktor.de/magazin/wie-fruchtzucker-das-hirn-veraendert/" "wie-fruchtzucker-das-hirn-veraendert" &
getInhalt "http://www.netdoktor.de/magazin/krebsschutz-aspirin-fuer-alle/" "krebsschutz-aspirin-fuer-alle" &
getInhalt "http://www.netdoktor.de/magazin/schmerzmittel-helfer-mit-suchtpotenzial/" "schmerzmittel-helfer-mit-suchtpotenzial" &
getInhalt "http://www.netdoktor.de/magazin/vollnarkose-kontrollverlust-total/" "vollnarkose-kontrollverlust-total" &
getInhalt "http://www.netdoktor.de/magazin/nicht-der-schmerz-die-angst-ist-das-problem/" "nicht-der-schmerz-die-angst-ist-das-problem" &
getInhalt "http://www.netdoktor.de/magazin/jeder-hat-seinen-eigenen-parkinson/" "jeder-hat-seinen-eigenen-parkinson" &
getInhalt "http://www.netdoktor.de/magazin/rauchstopp-mit-dampf-krueckstock/" "rauchstopp-mit-dampf-krueckstock" &
getInhalt "http://www.netdoktor.de/magazin/das-maerchen-vom-gesunden-alkohol/" "das-maerchen-vom-gesunden-alkohol" &
getInhalt "http://www.netdoktor.de/magazin/die-grenze-zwischen-gesund-und-krank-ist-fliessend/" "die-grenze-zwischen-gesund-und-krank-ist-fliessend" &
getInhalt "http://www.netdoktor.de/magazin/auch-darmkrebs-koennte-durch-viren-ausgeloest-werden/" "auch-darmkrebs-koennte-durch-viren-ausgeloest-werden" &
getInhalt "http://www.netdoktor.de/magazin/fatigue-bei-krebs-sport-ist-ein-wundermittel/" "fatigue-bei-krebs-sport-ist-ein-wundermittel" &
getInhalt "http://www.netdoktor.de/magazin/faszien-sind-ein-sinnesorgan/" "faszien-sind-ein-sinnesorgan" &
getInhalt "http://www.netdoktor.de/magazin/gavriels-letzte-chance/" "gavriels-letzte-chance" &
getInhalt "http://www.netdoktor.de/magazin/krankheitsrisiken-was-die-koerpergroesse-verraet/" "krankheitsrisiken-was-die-koerpergroesse-verraet" &
getInhalt "http://www.netdoktor.de/magazin/zika-welt-im-gesundheitsnotstand/" "zika-welt-im-gesundheitsnotstand" &
getInhalt "http://www.netdoktor.de/magazin/mit-der-genschere-gegen-krebs/" "mit-der-genschere-gegen-krebs" &
getInhalt "http://www.netdoktor.de/magazin/dramatische-nebenwirkungen-sind-selten/" "dramatische-nebenwirkungen-sind-selten" &
getInhalt "http://www.netdoktor.de/magazin/pflegestaerkungsgesetz-das-ist-neu/" "pflegestaerkungsgesetz-das-ist-neu" &
getInhalt "http://www.netdoktor.de/magazin/jeder-millimeter-abstand-bringt-etwas/" "jeder-millimeter-abstand-bringt-etwas" &
getInhalt "http://www.netdoktor.de/magazin/vegan-tierisch-gesund/" "vegan-tierisch-gesund" &
getInhalt "http://www.netdoktor.de/magazin/schlank-werden-ohne-diaet/" "schlank-werden-ohne-diaet" &
getInhalt "http://www.netdoktor.de/magazin/designer-zellen-blockieren-schuppenflechte/" "designer-zellen-blockieren-schuppenflechte" &
