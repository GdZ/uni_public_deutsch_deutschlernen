getInhalt()
{
	inhalt_url=$1
	name=$2
	echo wget ${inhalt_url} -o ${name}.log -O ${name}.html
	wget ${inhalt_url} -o ${name}.log -O ${name}.html
}

# test
getInhalt "http://www.netdoktor.de/magazin/entzuendungen-befeuern-depressionen/" "entzuendungen-befeuern-depressionen" &
getInhalt "http://www.netdoktor.de/magazin/fuer-viele-gehoert-husten-zur-zigarette-dazu/" "fuer-viele-gehoert-husten-zur-zigarette-dazu" &
getInhalt "http://www.netdoktor.de/magazin/bluthochdruck-sind-die-zielwerte-zu-lasch/" "bluthochdruck-sind-die-zielwerte-zu-lasch" &
getInhalt "http://www.netdoktor.de/magazin/hilfe-zum-suizid-darf-nicht-normal-werden/" "hilfe-zum-suizid-darf-nicht-normal-werden" &
getInhalt "http://www.netdoktor.de/magazin/wird-sterbehilfe-strafbar/" "wird-sterbehilfe-strafbar" &
getInhalt "http://www.netdoktor.de/magazin/ernaehrung-fuer-die-augen/" "ernaehrung-fuer-die-augen" &
getInhalt "http://www.netdoktor.de/magazin/absolute-sicherheit-gibt-es-nicht-bei-krebs/" "absolute-sicherheit-gibt-es-nicht-bei-krebs" &
getInhalt "http://www.netdoktor.de/magazin/was-wuerstchen-krebserregend-macht/" "was-wuerstchen-krebserregend-macht" &
getInhalt "http://www.netdoktor.de/magazin/sonnenbrillen-scharfe-blicke/" "sonnenbrillen-scharfe-blicke" &
getInhalt "http://www.netdoktor.de/magazin/milch-lebenselixier-oder-gift-im-glas/" "milch-lebenselixier-oder-gift-im-glas" &
getInhalt "http://www.netdoktor.de/magazin/darmflora-motor-fuer-ms/" "darmflora-motor-fuer-ms" &
getInhalt "http://www.netdoktor.de/magazin/zuckerkrank-durch-zigaretten/" "zuckerkrank-durch-zigaretten" &
getInhalt "http://www.netdoktor.de/magazin/fisch-geheimwaffe-gegen-depressionen/" "fisch-geheimwaffe-gegen-depressionen" &
getInhalt "http://www.netdoktor.de/magazin/parkinson-widerspenstige-zaehmung/" "parkinson-widerspenstige-zaehmung" &
getInhalt "http://www.netdoktor.de/magazin/ueberwaeltigendes-gefuehl-der-ausweglosigkeit/" "ueberwaeltigendes-gefuehl-der-ausweglosigkeit" &
getInhalt "http://www.netdoktor.de/magazin/diabetes-freispruch-fuer-cola-light/" "diabetes-freispruch-fuer-cola-light" &
getInhalt "http://www.netdoktor.de/magazin/lustvoller-sex-ist-in-jedem-alter-moeglich/" "lustvoller-sex-ist-in-jedem-alter-moeglich" &
getInhalt "http://www.netdoktor.de/magazin/wer-hungrig-ist-kann-nicht-diaet-halten/" "wer-hungrig-ist-kann-nicht-diaet-halten" &
getInhalt "http://www.netdoktor.de/magazin/geheilter-darm-dank-stuhlspende/" "geheilter-darm-dank-stuhlspende" &
getInhalt "http://www.netdoktor.de/magazin/leisure-sickness-so-retten-sie-ihren-urlaub/" "leisure-sickness-so-retten-sie-ihren-urlaub" &
getInhalt "http://www.netdoktor.de/magazin/vorteil-fuer-den-zappelphilipp/" "vorteil-fuer-den-zappelphilipp" &
getInhalt "http://www.netdoktor.de/magazin/herzschlag-beeinflusst-die-weibliche-lust/" "herzschlag-beeinflusst-die-weibliche-lust" &
getInhalt "http://www.netdoktor.de/magazin/wenn-kratzen-zur-sucht-wird/" "wenn-kratzen-zur-sucht-wird" &
getInhalt "http://www.netdoktor.de/magazin/sensationsfund-im-gehirn/" "sensationsfund-im-gehirn" &
getInhalt "http://www.netdoktor.de/magazin/die-jagd-nach-dem-strohhalm/" "die-jagd-nach-dem-strohhalm" &
getInhalt "http://www.netdoktor.de/magazin/chronischer-schnupfen-riskante-schniefnasen/" "chronischer-schnupfen-riskante-schniefnasen" &
getInhalt "http://www.netdoktor.de/magazin/reizdarm-koennte-mikroskopische-kolitis-sein/" "reizdarm-koennte-mikroskopische-kolitis-sein" &
getInhalt "http://www.netdoktor.de/magazin/beckenbodentraining-hilft-auch-maennern/" "beckenbodentraining-hilft-auch-maennern" &
getInhalt "http://www.netdoktor.de/magazin/onlinetherapie-effektiv-aber-riskant/" "onlinetherapie-effektiv-aber-riskant" &
getInhalt "http://www.netdoktor.de/magazin/inkontinenz-das-heimliche-leiden/" "inkontinenz-das-heimliche-leiden" &
getInhalt "http://www.netdoktor.de/magazin/interview-wir-sind-an-unseren-mundgeruch-gewoehnt/" "interview-wir-sind-an-unseren-mundgeruch-gewoehnt" &
getInhalt "http://www.netdoktor.de/magazin/fibromyalgie-patienten-galten-lange-als-eingebildete-kranke/" "fibromyalgie-patienten-galten-lange-als-eingebildete-kranke" &
getInhalt "http://www.netdoktor.de/magazin/clusterkopfschmerz-gezaehmter-folterknecht-im-kopf/" "clusterkopfschmerz-gezaehmter-folterknecht-im-kopf" &
getInhalt "http://www.netdoktor.de/magazin/flugzeugabsturz-in-frankreich-entscheidend-ist-dass-man-gewissheit-hat/" "flugzeugabsturz-in-frankreich-entscheidend-ist-dass-man-gewissheit-hat" &
getInhalt "http://www.netdoktor.de/magazin/fasten-sie-sich-gesund/" "fasten-sie-sich-gesund" &
getInhalt "http://www.netdoktor.de/magazin/kuenstlicher-darmausgang-wie-eine-erdbeere-am-bauch/" "kuenstlicher-darmausgang-wie-eine-erdbeere-am-bauch" &
getInhalt "http://www.netdoktor.de/magazin/grippe-so-schuetzen-sie-sich/" "grippe-so-schuetzen-sie-sich" &
getInhalt "http://www.netdoktor.de/magazin/die-grippe-ist-da-was-jetzt/" "die-grippe-ist-da-was-jetzt" &
getInhalt "http://www.netdoktor.de/magazin/neue-leitlinien-zur-alkoholsucht-ein-epochaler-schritt/" "neue-leitlinien-zur-alkoholsucht-ein-epochaler-schritt" &
getInhalt "http://www.netdoktor.de/magazin/rasterfahndung-nach-psychosen/" "rasterfahndung-nach-psychosen" &
getInhalt "http://www.netdoktor.de/magazin/das-war-knapp-senioren-als-verkehrshindernis/" "das-war-knapp-senioren-als-verkehrshindernis" &
getInhalt "http://www.netdoktor.de/magazin/resistente-bakterien-superkeime-aus-dem-stall/" "resistente-bakterien-superkeime-aus-dem-stall" &
getInhalt "http://www.netdoktor.de/magazin/interview-kopfschmerz-aendern-sie-ihr-leben/" "interview-kopfschmerz-aendern-sie-ihr-leben" &
