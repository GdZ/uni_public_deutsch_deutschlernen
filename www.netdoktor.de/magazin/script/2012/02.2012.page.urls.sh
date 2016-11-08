getInhalt()
{
	inhalt_url=$1
	name=$2
	echo wget ${inhalt_url} -o ${name}.log -O ${name}.html
	wget ${inhalt_url} -o ${name}.log -O ${name}.html
}

# test
getInhalt "http://www.netdoktor.de/magazin/partnerwahl-was-frauen-attraktiv-finden/" "partnerwahl-was-frauen-attraktiv-finden" &
getInhalt "http://www.netdoktor.de/magazin/hoehenkrankheit-manchen-erwischt-sie-schon-auf-2-000-metern/" "hoehenkrankheit-manchen-erwischt-sie-schon-auf-2-000-metern" &
getInhalt "http://www.netdoktor.de/magazin/schlafsucht-die-schlafpille-im-kopf/" "schlafsucht-die-schlafpille-im-kopf" &
getInhalt "http://www.netdoktor.de/magazin/stromausfall-in-muenchen-keine-angst-vor-dem-blackout/" "stromausfall-in-muenchen-keine-angst-vor-dem-blackout" &
getInhalt "http://www.netdoktor.de/magazin/uebergewicht-und-abnehmen-die-sex-diaet/" "uebergewicht-und-abnehmen-die-sex-diaet" &
getInhalt "http://www.netdoktor.de/magazin/diabetes-manchmal-wird-auch-getrickst/" "diabetes-manchmal-wird-auch-getrickst" &
getInhalt "http://www.netdoktor.de/magazin/glueckspsychologie-der-perfekte-tag/" "glueckspsychologie-der-perfekte-tag" &
getInhalt "http://www.netdoktor.de/magazin/leben-nach-dem-schlaganfall-man-entwickelt-einen-gewissen-galgenhumor/" "leben-nach-dem-schlaganfall-man-entwickelt-einen-gewissen-galgenhumor" &
getInhalt "http://www.netdoktor.de/magazin/antibiotika-missbrauch-volle-droehnung-bei-schnupfen/" "antibiotika-missbrauch-volle-droehnung-bei-schnupfen" &
getInhalt "http://www.netdoktor.de/magazin/stammzellen-zellulaere-multitalente/" "stammzellen-zellulaere-multitalente" &
getInhalt "http://www.netdoktor.de/magazin/stammzellen-faqs/" "stammzellen-faqs" &
getInhalt "http://www.netdoktor.de/magazin/alkohol-und-alkoholvergiftung-ein-gewisser-realitaetsverlust/" "alkohol-und-alkoholvergiftung-ein-gewisser-realitaetsverlust" &
getInhalt "http://www.netdoktor.de/magazin/magen-darm-grippewelle-wissen-nicht-wonach-wir-suchen-sollen/" "magen-darm-grippewelle-wissen-nicht-wonach-wir-suchen-sollen" &
getInhalt "http://www.netdoktor.de/magazin/arzneiverordnungsreport-2012-teure-pillen/" "arzneiverordnungsreport-2012-teure-pillen" &
getInhalt "http://www.netdoktor.de/magazin/diabetes-oktoberfest-unbesorgter-genuss/" "diabetes-oktoberfest-unbesorgter-genuss" &
getInhalt "http://www.netdoktor.de/magazin/schoene-haut-heute-bronzevenus-morgen-backpflaume/" "schoene-haut-heute-bronzevenus-morgen-backpflaume" &
getInhalt "http://www.netdoktor.de/magazin/das-wohlfuehl-deutschland/" "das-wohlfuehl-deutschland" &
getInhalt "http://www.netdoktor.de/magazin/skandal-in-der-pflege-dahinter-steckt-viel-kriminelle-energie/" "skandal-in-der-pflege-dahinter-steckt-viel-kriminelle-energie" &
getInhalt "http://www.netdoktor.de/magazin/pilzvergiftungen-sechs-gruende/" "pilzvergiftungen-sechs-gruende" &
getInhalt "http://www.netdoktor.de/magazin/tropenkrankheiten-boese-souvenirs/" "tropenkrankheiten-boese-souvenirs" &
getInhalt "http://www.netdoktor.de/magazin/teenager-wer-sich-fett-fuehlt-wird-dick/" "teenager-wer-sich-fett-fuehlt-wird-dick" &
getInhalt "http://www.netdoktor.de/magazin/objektophilie-heisse-naechte-kalter-stahl/" "objektophilie-heisse-naechte-kalter-stahl" &
getInhalt "http://www.netdoktor.de/magazin/objektophilie-kamasutra-mit-dem-akw/" "objektophilie-kamasutra-mit-dem-akw" &
getInhalt "http://www.netdoktor.de/magazin/west-nil-fieber-an-der-elbe/" "west-nil-fieber-an-der-elbe" &
getInhalt "http://www.netdoktor.de/magazin/gentherapie-geflicktes-erbgut/" "gentherapie-geflicktes-erbgut" &
getInhalt "http://www.netdoktor.de/magazin/gentechnik-manipulierter-bauplan/" "gentechnik-manipulierter-bauplan" &
getInhalt "http://www.netdoktor.de/magazin/gentests-der-entschluesselte-mensch/" "gentests-der-entschluesselte-mensch" &
getInhalt "http://www.netdoktor.de/magazin/genforschung-der-geknackte-code/" "genforschung-der-geknackte-code" &
getInhalt "http://www.netdoktor.de/magazin/mutationen-fehler-im-gencode/" "mutationen-fehler-im-gencode" &
getInhalt "http://www.netdoktor.de/magazin/die-faszinierende-welt-der-gene/" "die-faszinierende-welt-der-gene" &
getInhalt "http://www.netdoktor.de/magazin/das-geheimnis-der-vererbung/" "das-geheimnis-der-vererbung" &
getInhalt "http://www.netdoktor.de/magazin/erbgut-gene-chromosomen/" "erbgut-gene-chromosomen" &
getInhalt "http://www.netdoktor.de/magazin/genetik-epigenetik-gene-sind-kein-schicksal/" "genetik-epigenetik-gene-sind-kein-schicksal" &
getInhalt "http://www.netdoktor.de/magazin/genetik-gene-und-krankheiten/" "genetik-gene-und-krankheiten" &
getInhalt "http://www.netdoktor.de/magazin/hirndoping-entzauberte-psychopillen/" "hirndoping-entzauberte-psychopillen" &
getInhalt "http://www.netdoktor.de/magazin/hirndoping-entzauberte-psychopillen-teil-2/" "hirndoping-entzauberte-psychopillen-teil-2" &
getInhalt "http://www.netdoktor.de/magazin/zombie-im-zeitraffer/" "zombie-im-zeitraffer" &
getInhalt "http://www.netdoktor.de/magazin/chronischer-schmerz-alles-geht-vorueber/" "chronischer-schmerz-alles-geht-vorueber" &
getInhalt "http://www.netdoktor.de/magazin/arteriosklerose-die-wahren-uebeltaeter/" "arteriosklerose-die-wahren-uebeltaeter" &
getInhalt "http://www.netdoktor.de/magazin/faninterview-einzige-rettung-waere-hirn-op/" "faninterview-einzige-rettung-waere-hirn-op" &
getInhalt "http://www.netdoktor.de/magazin/abnehmen-xxl/" "abnehmen-xxl" &
getInhalt "http://www.netdoktor.de/magazin/reizende-raupen/" "reizende-raupen" &
getInhalt "http://www.netdoktor.de/magazin/intervalltraining-weniger-ist-mehr/" "intervalltraining-weniger-ist-mehr" &
getInhalt "http://www.netdoktor.de/magazin/junge-fussballspieler-kicken-mit-ruecken/" "junge-fussballspieler-kicken-mit-ruecken" &
getInhalt "http://www.netdoktor.de/magazin/interview-zecken-haben-vorlieben/" "interview-zecken-haben-vorlieben" &
getInhalt "http://www.netdoktor.de/magazin/zecken-schreck-zur-em/" "zecken-schreck-zur-em" &
getInhalt "http://www.netdoktor.de/magazin/maenner-und-stress-die-softie-strategie/" "maenner-und-stress-die-softie-strategie" &
getInhalt "http://www.netdoktor.de/magazin/uebergewicht-dick-ueber-nacht/" "uebergewicht-dick-ueber-nacht" &
getInhalt "http://www.netdoktor.de/magazin/magersucht-kinder-am-hungerhaken/" "magersucht-kinder-am-hungerhaken" &
getInhalt "http://www.netdoktor.de/magazin/mobile-stroke-unit-klinik-faehrt-zu-patienten/" "mobile-stroke-unit-klinik-faehrt-zu-patienten" &
getInhalt "http://www.netdoktor.de/magazin/allergieforschung-die-allergiedompteure/" "allergieforschung-die-allergiedompteure" &
getInhalt "http://www.netdoktor.de/magazin/kalorienrestriktion-weniger-essen-laenger-leben/" "kalorienrestriktion-weniger-essen-laenger-leben" &
getInhalt "http://www.netdoktor.de/magazin/risiko-buerojob-aufstehen-kann-ihr-leben-retten/" "risiko-buerojob-aufstehen-kann-ihr-leben-retten" &
getInhalt "http://www.netdoktor.de/magazin/hautkrebsrisiko-weiblich-jung-krebskrank/" "hautkrebsrisiko-weiblich-jung-krebskrank" &
getInhalt "http://www.netdoktor.de/magazin/somatoforme-stoerungen-phantomschmerzen-der-seele/" "somatoforme-stoerungen-phantomschmerzen-der-seele" &
getInhalt "http://www.netdoktor.de/magazin/yoga-gegen-krankheiten-selbstheilung-mit-sonnengruss/" "yoga-gegen-krankheiten-selbstheilung-mit-sonnengruss" &
getInhalt "http://www.netdoktor.de/magazin/maennlicher-haarausfall-die-haar-retter/" "maennlicher-haarausfall-die-haar-retter" &
getInhalt "http://www.netdoktor.de/magazin/pharmaforschung-aspirin-gegen-krebs/" "pharmaforschung-aspirin-gegen-krebs" &
getInhalt "http://www.netdoktor.de/magazin/riskante-immunstrategie-hauptsache-es-tut-weh/" "riskante-immunstrategie-hauptsache-es-tut-weh" &
getInhalt "http://www.netdoktor.de/magazin/lachyoga-die-gluecklichen-huehner/" "lachyoga-die-gluecklichen-huehner" &
getInhalt "http://www.netdoktor.de/magazin/lachtherapie-wer-lacht-denkt-nicht/" "lachtherapie-wer-lacht-denkt-nicht" &
getInhalt "http://www.netdoktor.de/magazin/diabetes-chat-diabetesschulung-das-protokoll/" "diabetes-chat-diabetesschulung-das-protokoll" &
getInhalt "http://www.netdoktor.de/magazin/krebsvorsorge-darmkrebs-trifft-maenner-zehn-jahre-frueher/" "krebsvorsorge-darmkrebs-trifft-maenner-zehn-jahre-frueher" &
getInhalt "http://www.netdoktor.de/magazin/cybermobbing-klassenkeile-im-netz/" "cybermobbing-klassenkeile-im-netz" &
getInhalt "http://www.netdoktor.de/magazin/schreibabys-bruellen-wie-besessen/" "schreibabys-bruellen-wie-besessen" &
getInhalt "http://www.netdoktor.de/magazin/evolutionspsychologie-geheimwaffe-depression/" "evolutionspsychologie-geheimwaffe-depression" &
getInhalt "http://www.netdoktor.de/magazin/schreikinder-verstehen-schreibabys-brauchen-rhythmus/" "schreikinder-verstehen-schreibabys-brauchen-rhythmus" &
getInhalt "http://www.netdoktor.de/magazin/diabetes-chat-was-tun-bei-gefaehrlicher-unterzuckerung-das-protokoll/" "diabetes-chat-was-tun-bei-gefaehrlicher-unterzuckerung-das-protokoll" &
getInhalt "http://www.netdoktor.de/magazin/die-implantierte-apotheke/" "die-implantierte-apotheke" &
getInhalt "http://www.netdoktor.de/magazin/biologisches-alter-zellen-verraten-herzinfarktrisiko/" "biologisches-alter-zellen-verraten-herzinfarktrisiko" &
getInhalt "http://www.netdoktor.de/magazin/antibiotika-fuer-kinder-volle-droehnung-fuer-die-kleinsten/" "antibiotika-fuer-kinder-volle-droehnung-fuer-die-kleinsten" &
getInhalt "http://www.netdoktor.de/magazin/krankheiten-selbst-heilen-moderne-kranke-erwarten-ein-rezept/" "krankheiten-selbst-heilen-moderne-kranke-erwarten-ein-rezept" &
getInhalt "http://www.netdoktor.de/magazin/mobile-therapie-bei-depressionen-der-therapeut-in-der-tasche/" "mobile-therapie-bei-depressionen-der-therapeut-in-der-tasche" &
getInhalt "http://www.netdoktor.de/magazin/vorbeugen-schach-dem-krebs/" "vorbeugen-schach-dem-krebs" &
getInhalt "http://www.netdoktor.de/magazin/striptease-fuers-erbgut/" "striptease-fuers-erbgut" &
getInhalt "http://www.netdoktor.de/magazin/alzheimer-vorbeugen-wegtrainierter-kalk/" "alzheimer-vorbeugen-wegtrainierter-kalk" &
getInhalt "http://www.netdoktor.de/magazin/linkshaender-beidhaender-sind-im-vorteil/" "linkshaender-beidhaender-sind-im-vorteil" &
getInhalt "http://www.netdoktor.de/magazin/erektionsstoerungen-durch-medikamente-maenner-im-bett-koma/" "erektionsstoerungen-durch-medikamente-maenner-im-bett-koma" &
getInhalt "http://www.netdoktor.de/magazin/frueherkennung-alzheimer-kristallkugel-fuers-gehirn/" "frueherkennung-alzheimer-kristallkugel-fuers-gehirn" &
getInhalt "http://www.netdoktor.de/magazin/jo-jo-effekt-in-der-fettfalle/" "jo-jo-effekt-in-der-fettfalle" &
