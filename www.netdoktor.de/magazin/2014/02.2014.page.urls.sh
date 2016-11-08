getInhalt()
{
	inhalt_url=$1
	name=$2
	echo wget ${inhalt_url} -o ${name}.log -O ${name}.html
	wget ${inhalt_url} -o ${name}.log -O ${name}.html
}

# test
getInhalt "http://www.netdoktor.de/magazin/influenza-winzige-verwandlungskuenstler/" "influenza-winzige-verwandlungskuenstler" &
getInhalt "http://www.netdoktor.de/magazin/polyneuropathie-unbehandelt-droht-eine-amputation/" "polyneuropathie-unbehandelt-droht-eine-amputation" &
getInhalt "http://www.netdoktor.de/magazin/diabetes-bei-kindern-das-sind-die-warnsignale/" "diabetes-bei-kindern-das-sind-die-warnsignale" &
getInhalt "http://www.netdoktor.de/magazin/winteraugen-die-besten-tipps/" "winteraugen-die-besten-tipps" &
getInhalt "http://www.netdoktor.de/magazin/posttraumatische-belastungsstoerung-psychotherapie-fuer-gene/" "posttraumatische-belastungsstoerung-psychotherapie-fuer-gene" &
getInhalt "http://www.netdoktor.de/magazin/interview-herzgesundheit-take-it-easy/" "interview-herzgesundheit-take-it-easy" &
getInhalt "http://www.netdoktor.de/magazin/ebola-in-angst-und-bangen/" "ebola-in-angst-und-bangen" &
getInhalt "http://www.netdoktor.de/magazin/kusskrankheit-macht-dauerschlapp/" "kusskrankheit-macht-dauerschlapp" &
getInhalt "http://www.netdoktor.de/magazin/sicher-autofahren-mit-diabetes/" "sicher-autofahren-mit-diabetes" &
getInhalt "http://www.netdoktor.de/magazin/psychoonkologie-den-krebs-in-seine-schranken-weisen/" "psychoonkologie-den-krebs-in-seine-schranken-weisen" &
getInhalt "http://www.netdoktor.de/magazin/ebola-die-wichtigsten-antworten/" "ebola-die-wichtigsten-antworten" &
getInhalt "http://www.netdoktor.de/magazin/thrombose-toedliche-wanderer/" "thrombose-toedliche-wanderer" &
getInhalt "http://www.netdoktor.de/magazin/krebspraevention-muskeln-koennen-vor-krebs-schuetzen/" "krebspraevention-muskeln-koennen-vor-krebs-schuetzen" &
getInhalt "http://www.netdoktor.de/magazin/bewegen-gegen-bechterew/" "bewegen-gegen-bechterew" &
getInhalt "http://www.netdoktor.de/magazin/naturheilkunde-in-der-krebsbehandlung-die-wirkung-wird-unterschaetzt/" "naturheilkunde-in-der-krebsbehandlung-die-wirkung-wird-unterschaetzt" &
getInhalt "http://www.netdoktor.de/magazin/erste-hilfe-auf-dem-oktoberfest-besser-bergstiefel-zum-dirndl/" "erste-hilfe-auf-dem-oktoberfest-besser-bergstiefel-zum-dirndl" &
getInhalt "http://www.netdoktor.de/magazin/ballenzehe-meist-sind-die-schuhe-schuld/" "ballenzehe-meist-sind-die-schuhe-schuld" &
getInhalt "http://www.netdoktor.de/magazin/epilepsie-schnitt-ins-gehirn/" "epilepsie-schnitt-ins-gehirn" &
getInhalt "http://www.netdoktor.de/magazin/demenz-ist-alzheimer-ansteckend/" "demenz-ist-alzheimer-ansteckend" &
getInhalt "http://www.netdoktor.de/magazin/karpaltunnelsyndrom-wenn-die-schmerzen-verschwinden-ist-es-zu-spaet/" "karpaltunnelsyndrom-wenn-die-schmerzen-verschwinden-ist-es-zu-spaet" &
getInhalt "http://www.netdoktor.de/magazin/nesselsucht-sport-und-scharfes-essen-als-ausloeser/" "nesselsucht-sport-und-scharfes-essen-als-ausloeser" &
getInhalt "http://www.netdoktor.de/magazin/flitterwochen-blasenentzuendung-so-beugen-sie-vor/" "flitterwochen-blasenentzuendung-so-beugen-sie-vor" &
getInhalt "http://www.netdoktor.de/magazin/antibiotika-sind-sie-schon-bald-wirkungslos/" "antibiotika-sind-sie-schon-bald-wirkungslos" &
getInhalt "http://www.netdoktor.de/magazin/salz-unterschaetzte-gefahr/" "salz-unterschaetzte-gefahr" &
getInhalt "http://www.netdoktor.de/magazin/orthorexie-zwanghaft-gesund/" "orthorexie-zwanghaft-gesund" &
getInhalt "http://www.netdoktor.de/magazin/selbstverletzung-suechtig-nach-schmerz/" "selbstverletzung-suechtig-nach-schmerz" &
getInhalt "http://www.netdoktor.de/magazin/heuschnupfen-therapie-durchhalten-statt-dauerschniefen/" "heuschnupfen-therapie-durchhalten-statt-dauerschniefen" &
getInhalt "http://www.netdoktor.de/magazin/krebsauszehrung-wenn-der-koerper-sich-selbst-verbrennt/" "krebsauszehrung-wenn-der-koerper-sich-selbst-verbrennt" &
getInhalt "http://www.netdoktor.de/magazin/ernaehrung-bei-krebs-schlemmen-und-geniessen-sie/" "ernaehrung-bei-krebs-schlemmen-und-geniessen-sie" &
getInhalt "http://www.netdoktor.de/magazin/tod-in-flaschen/" "tod-in-flaschen" &
getInhalt "http://www.netdoktor.de/magazin/wochenbettdepression-die-schattenmuetter/" "wochenbettdepression-die-schattenmuetter" &
getInhalt "http://www.netdoktor.de/magazin/ausgebrannte-teams-ein-virus-namens-burnout/" "ausgebrannte-teams-ein-virus-namens-burnout" &
getInhalt "http://www.netdoktor.de/magazin/gebaermutterhalskrebs-besser-operieren-laenger-leben/" "gebaermutterhalskrebs-besser-operieren-laenger-leben" &
getInhalt "http://www.netdoktor.de/magazin/schoenheit-fettabsaugen-nichts-fuer-dicke/" "schoenheit-fettabsaugen-nichts-fuer-dicke" &
getInhalt "http://www.netdoktor.de/magazin/psychische-krankheiten-20-verlorene-lebensjahre/" "psychische-krankheiten-20-verlorene-lebensjahre" &
getInhalt "http://www.netdoktor.de/magazin/selbsthilfegruppe-depression-willst-du-wieder-zu-den-bekloppten/" "selbsthilfegruppe-depression-willst-du-wieder-zu-den-bekloppten" &
getInhalt "http://www.netdoktor.de/magazin/mundhygiene-zahnbuersten-ein-paradies-fuer-keime/" "mundhygiene-zahnbuersten-ein-paradies-fuer-keime" &
getInhalt "http://www.netdoktor.de/magazin/wie-gefaehrlich-ist-mers/" "wie-gefaehrlich-ist-mers" &
getInhalt "http://www.netdoktor.de/magazin/unerkannte-krankheiten-medizin-ist-wie-ein-krimi/" "unerkannte-krankheiten-medizin-ist-wie-ein-krimi" &
getInhalt "http://www.netdoktor.de/magazin/allergikerschreck-ambrosia-reizende-gefahr/" "allergikerschreck-ambrosia-reizende-gefahr" &
getInhalt "http://www.netdoktor.de/magazin/interview-sucht-alkohol-ist-ein-heisses-eisen/" "interview-sucht-alkohol-ist-ein-heisses-eisen" &
getInhalt "http://www.netdoktor.de/magazin/unterschaetztes-virus-herpes-kann-ins-auge-gehen/" "unterschaetztes-virus-herpes-kann-ins-auge-gehen" &
getInhalt "http://www.netdoktor.de/magazin/zeckenprognose-blutsauger-in-der-klimafalle/" "zeckenprognose-blutsauger-in-der-klimafalle" &
getInhalt "http://www.netdoktor.de/magazin/warnampel-pflaster-erkennt-wundinfektion/" "warnampel-pflaster-erkennt-wundinfektion" &
getInhalt "http://www.netdoktor.de/magazin/organspende-volk-der-unentschiedenen/" "organspende-volk-der-unentschiedenen" &
getInhalt "http://www.netdoktor.de/magazin/trauernde-kinder-haengebruecke-ueber-den-schmerz/" "trauernde-kinder-haengebruecke-ueber-den-schmerz" &
getInhalt "http://www.netdoktor.de/magazin/turbo-stoffwechsel-prinzip-den-stoffwechsel-wieder-aus-dem-keller-locken/" "turbo-stoffwechsel-prinzip-den-stoffwechsel-wieder-aus-dem-keller-locken" &
getInhalt "http://www.netdoktor.de/magazin/welttuberkulosetag-2014-tickende-zeitbombe/" "welttuberkulosetag-2014-tickende-zeitbombe" &
getInhalt "http://www.netdoktor.de/magazin/koronare-herzkrankheit-diskussion-ueber-fette-neu-entflammt/" "koronare-herzkrankheit-diskussion-ueber-fette-neu-entflammt" &
getInhalt "http://www.netdoktor.de/magazin/ernaehrung-bei-darmkrebs-vorsorge-mit-messer-und-gabel/" "ernaehrung-bei-darmkrebs-vorsorge-mit-messer-und-gabel" &
getInhalt "http://www.netdoktor.de/magazin/wechseljahre-verhuetung-fuer-fortgeschrittene/" "wechseljahre-verhuetung-fuer-fortgeschrittene" &
getInhalt "http://www.netdoktor.de/magazin/eiweissreiche-kost-so-toedlich-wie-rauchen/" "eiweissreiche-kost-so-toedlich-wie-rauchen" &
getInhalt "http://www.netdoktor.de/magazin/typ-1-diabetes-pankreas-aus-der-dose/" "typ-1-diabetes-pankreas-aus-der-dose" &
getInhalt "http://www.netdoktor.de/magazin/verraeterische-anzeichen-bin-ich-schwanger/" "verraeterische-anzeichen-bin-ich-schwanger" &
getInhalt "http://www.netdoktor.de/magazin/augengesundheit-kontaktlinsen-fuer-jecken-und-narren/" "augengesundheit-kontaktlinsen-fuer-jecken-und-narren" &
getInhalt "http://www.netdoktor.de/magazin/grippeschutz-powerimpfung-fuer-senioren/" "grippeschutz-powerimpfung-fuer-senioren" &
getInhalt "http://www.netdoktor.de/magazin/interview-hoehenkrankheit-man-fuehlt-sich-sterbenselend/" "interview-hoehenkrankheit-man-fuehlt-sich-sterbenselend" &
getInhalt "http://www.netdoktor.de/magazin/leichenpraeparator-leben-mit-den-toten/" "leichenpraeparator-leben-mit-den-toten" &
getInhalt "http://www.netdoktor.de/magazin/sind-tv-serienjunkies-suechtig/" "sind-tv-serienjunkies-suechtig" &
getInhalt "http://www.netdoktor.de/magazin/placebo-gegen-migraene-coming-out-der-zuckerpillen/" "placebo-gegen-migraene-coming-out-der-zuckerpillen" &
getInhalt "http://www.netdoktor.de/magazin/wintersport-risiko-ist-out/" "wintersport-risiko-ist-out" &
getInhalt "http://www.netdoktor.de/magazin/psychose-alles-fuehlte-sich-unwirklich-an/" "psychose-alles-fuehlte-sich-unwirklich-an" &
