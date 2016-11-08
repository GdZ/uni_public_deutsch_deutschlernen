getInhalt()
{
	inhalt_url=$1
	name=$2
	echo wget ${inhalt_url} -o ${name}.log -O ${name}.html
	wget ${inhalt_url} -o ${name}.log -O ${name}.html
}

# test
getInhalt "http://www.netdoktor.de/magazin/experten-chat-neues-aus-der-diabetes-forschung-das-protokoll/" "experten-chat-neues-aus-der-diabetes-forschung-das-protokoll" &
getInhalt "http://www.netdoktor.de/magazin/verwoehnsets-zu-gewinnen-diabetes-gewinnspiel/" "verwoehnsets-zu-gewinnen-diabetes-gewinnspiel" &
getInhalt "http://www.netdoktor.de/magazin/ernaehrung-lebensverlaengernder-ballast/" "ernaehrung-lebensverlaengernder-ballast" &
getInhalt "http://www.netdoktor.de/magazin/experten-chat-diabetes-und-sport-das-protokoll/" "experten-chat-diabetes-und-sport-das-protokoll" &
getInhalt "http://www.netdoktor.de/magazin/schlaganfall-bei-kindern-flexibles-gehirn-ist-chance/" "schlaganfall-bei-kindern-flexibles-gehirn-ist-chance" &
getInhalt "http://www.netdoktor.de/magazin/haltbarkeit-von-lebensmitteln-alle-fuenf-sinne-sind-gefragt/" "haltbarkeit-von-lebensmitteln-alle-fuenf-sinne-sind-gefragt" &
getInhalt "http://www.netdoktor.de/magazin/aneurysma-und-kernspin-der-droehnende-sarkophag/" "aneurysma-und-kernspin-der-droehnende-sarkophag" &
getInhalt "http://www.netdoktor.de/magazin/junge-parkinsonpatienten-die-zitterkrieger/" "junge-parkinsonpatienten-die-zitterkrieger" &
getInhalt "http://www.netdoktor.de/magazin/nocebo-der-boese-zauber/" "nocebo-der-boese-zauber" &
getInhalt "http://www.netdoktor.de/magazin/nocebo-teil-2-der-arzt-als-voodoopriester/" "nocebo-teil-2-der-arzt-als-voodoopriester" &
getInhalt "http://www.netdoktor.de/magazin/sport-gegen-krebs-dem-tumor-beine-machen/" "sport-gegen-krebs-dem-tumor-beine-machen" &
getInhalt "http://www.netdoktor.de/magazin/uebergewicht-verbrennen-das-geheimnis-schlanker-naschkatzen/" "uebergewicht-verbrennen-das-geheimnis-schlanker-naschkatzen" &
getInhalt "http://www.netdoktor.de/magazin/diabetes-chat-jung-und-uebergewichtig-das-protokoll/" "diabetes-chat-jung-und-uebergewichtig-das-protokoll" &
getInhalt "http://www.netdoktor.de/magazin/gesundheits-atlas-deutschland-im-land-der-schnellen-messer/" "gesundheits-atlas-deutschland-im-land-der-schnellen-messer" &
getInhalt "http://www.netdoktor.de/magazin/kostenexplosion-in-der-krebstherapie-teil-1-teure-lebenszeit/" "kostenexplosion-in-der-krebstherapie-teil-1-teure-lebenszeit" &
getInhalt "http://www.netdoktor.de/magazin/familiaeres-aneurysma-die-implosion-im-kopf/" "familiaeres-aneurysma-die-implosion-im-kopf" &
getInhalt "http://www.netdoktor.de/magazin/interview-penisvergroesserung-monumentaler-penis-vergroessert-chancen-bei-frauen-nicht/" "interview-penisvergroesserung-monumentaler-penis-vergroessert-chancen-bei-frauen-nicht" &
getInhalt "http://www.netdoktor.de/magazin/oxytocin-therapie-fuer-autismus+co-das-miteinander-hormon/" "oxytocin-therapie-fuer-autismus+co-das-miteinander-hormon" &
getInhalt "http://www.netdoktor.de/magazin/experten-chat-diabetesschulung-das-protokoll/" "experten-chat-diabetesschulung-das-protokoll" &
getInhalt "http://www.netdoktor.de/magazin/mammografie-screening-bei-brustkrebs-der-niedergang-der-sterblichkeit/" "mammografie-screening-bei-brustkrebs-der-niedergang-der-sterblichkeit" &
getInhalt "http://www.netdoktor.de/magazin/experten-chat-fasten-und-diabetes-das-protokoll/" "experten-chat-fasten-und-diabetes-das-protokoll" &
getInhalt "http://www.netdoktor.de/magazin/weg-aus-der-depression-arschtritt-statt-therapie/" "weg-aus-der-depression-arschtritt-statt-therapie" &
getInhalt "http://www.netdoktor.de/magazin/vergesslichkeit-im-alter-verjuengungskur-fuers-hirn/" "vergesslichkeit-im-alter-verjuengungskur-fuers-hirn" &
getInhalt "http://www.netdoktor.de/magazin/experten-chat-insulinpumpe-und-glukosemessung-das-protokoll/" "experten-chat-insulinpumpe-und-glukosemessung-das-protokoll" &
getInhalt "http://www.netdoktor.de/magazin/pid-in-zukunft-erlaubt-die-gewissensentscheidung/" "pid-in-zukunft-erlaubt-die-gewissensentscheidung" &
getInhalt "http://www.netdoktor.de/magazin/placebo-forschung-heilung-mit-nichts/" "placebo-forschung-heilung-mit-nichts" &
getInhalt "http://www.netdoktor.de/magazin/medikament-gegen-progerie-junge-greise/" "medikament-gegen-progerie-junge-greise" &
getInhalt "http://www.netdoktor.de/magazin/psychologie-der-dunkle-zwilling/" "psychologie-der-dunkle-zwilling" &
getInhalt "http://www.netdoktor.de/magazin/komplementaermedizin-bei-krebs-die-macht-der-patienten/" "komplementaermedizin-bei-krebs-die-macht-der-patienten" &
getInhalt "http://www.netdoktor.de/magazin/alternativmedizin-bei-krebs-die-aerzte-liaison/" "alternativmedizin-bei-krebs-die-aerzte-liaison" &
getInhalt "http://www.netdoktor.de/magazin/rauchen-und-die-folgen-der-vermeidbare-tod/" "rauchen-und-die-folgen-der-vermeidbare-tod" &
getInhalt "http://www.netdoktor.de/magazin/experten-chat-diabetes+pubertaet-das-protokoll/" "experten-chat-diabetes+pubertaet-das-protokoll" &
getInhalt "http://www.netdoktor.de/magazin/ehec-bakterien-aggressive-darmkeime/" "ehec-bakterien-aggressive-darmkeime" &
getInhalt "http://www.netdoktor.de/magazin/interview-zur-fitness-sitzen-ist-toxisch/" "interview-zur-fitness-sitzen-ist-toxisch" &
getInhalt "http://www.netdoktor.de/magazin/experten-chat-diabetes-und-reisen-das-protokoll/" "experten-chat-diabetes-und-reisen-das-protokoll" &
getInhalt "http://www.netdoktor.de/magazin/experten-chat-diabetes+schwangerschaft-das-protokoll/" "experten-chat-diabetes+schwangerschaft-das-protokoll" &
getInhalt "http://www.netdoktor.de/magazin/magenbypass-bei-diabetes-eine-krankheit-verduftet/" "magenbypass-bei-diabetes-eine-krankheit-verduftet" &
getInhalt "http://www.netdoktor.de/magazin/motivationstraining-niederlagen-gibt-es-nicht/" "motivationstraining-niederlagen-gibt-es-nicht" &
getInhalt "http://www.netdoktor.de/magazin/chat-protokoll-warum-das-gehirn-diaeten-sabotiert/" "chat-protokoll-warum-das-gehirn-diaeten-sabotiert" &
getInhalt "http://www.netdoktor.de/magazin/asthma-und-allergien-bei-kindern-besser-dreckspatz-sein/" "asthma-und-allergien-bei-kindern-besser-dreckspatz-sein" &
getInhalt "http://www.netdoktor.de/magazin/erreger-resistent-gegen-antibiotika-zurueck-ins-mittelalter/" "erreger-resistent-gegen-antibiotika-zurueck-ins-mittelalter" &
getInhalt "http://www.netdoktor.de/magazin/experten-chat-diabetes-und-potenz-das-protokoll/" "experten-chat-diabetes-und-potenz-das-protokoll" &
getInhalt "http://www.netdoktor.de/magazin/yoga-fuer-maenner-kein-esoterisches-bimmelbammel/" "yoga-fuer-maenner-kein-esoterisches-bimmelbammel" &
getInhalt "http://www.netdoktor.de/magazin/laufen-statt-diaet-aufhoeren-wenn-es-am-schoensten-ist/" "laufen-statt-diaet-aufhoeren-wenn-es-am-schoensten-ist" &
getInhalt "http://www.netdoktor.de/magazin/experten-chat-diabetes-und-nieren-das-protokoll/" "experten-chat-diabetes-und-nieren-das-protokoll" &
getInhalt "http://www.netdoktor.de/magazin/wie-soll-man-sich-bei-einem-reaktorunfall-verhalten/" "wie-soll-man-sich-bei-einem-reaktorunfall-verhalten" &
getInhalt "http://www.netdoktor.de/magazin/faqs-zu-radioaktivitaet-und-strahlenschutz/" "faqs-zu-radioaktivitaet-und-strahlenschutz" &
getInhalt "http://www.netdoktor.de/magazin/sind-lebensmittel-aus-japan-verstrahlt/" "sind-lebensmittel-aus-japan-verstrahlt" &
getInhalt "http://www.netdoktor.de/magazin/welche-strahlendosis-ist-fuer-den-menschen-gefaehrlich/" "welche-strahlendosis-ist-fuer-den-menschen-gefaehrlich" &
getInhalt "http://www.netdoktor.de/magazin/wie-helfen-jodtabletten-gegen-radioaktive-strahlung/" "wie-helfen-jodtabletten-gegen-radioaktive-strahlung" &
getInhalt "http://www.netdoktor.de/magazin/was-ist-die-strahlenkrankheit/" "was-ist-die-strahlenkrankheit" &
getInhalt "http://www.netdoktor.de/magazin/was-ist-ein-gau-bzw-super-gau/" "was-ist-ein-gau-bzw-super-gau" &
getInhalt "http://www.netdoktor.de/magazin/was-ist-eine-kernschmelze/" "was-ist-eine-kernschmelze" &
getInhalt "http://www.netdoktor.de/magazin/in-welchen-einheiten-wird-die-radioaktivitaet-gemessen/" "in-welchen-einheiten-wird-die-radioaktivitaet-gemessen" &
getInhalt "http://www.netdoktor.de/magazin/experten-chat-diabetisches-fusssyndrom-das-protokoll/" "experten-chat-diabetisches-fusssyndrom-das-protokoll" &
getInhalt "http://www.netdoktor.de/magazin/praeimplantationsdiagnostik-es-geht-nicht-um-designerbabys/" "praeimplantationsdiagnostik-es-geht-nicht-um-designerbabys" &
getInhalt "http://www.netdoktor.de/magazin/dicke-diabetiker-sollen-abnehmen-zwangsmassnahmen-sind-nicht-akzeptabel/" "dicke-diabetiker-sollen-abnehmen-zwangsmassnahmen-sind-nicht-akzeptabel" &
getInhalt "http://www.netdoktor.de/magazin/diabetes-interview-ohne-uebergewicht-kein-diabetes/" "diabetes-interview-ohne-uebergewicht-kein-diabetes" &
getInhalt "http://www.netdoktor.de/magazin/depression-mitten-im-leben-acht-wochen-verrueckt/" "depression-mitten-im-leben-acht-wochen-verrueckt" &
getInhalt "http://www.netdoktor.de/magazin/seltene-erkrankungen-waisenkinder-der-medizin/" "seltene-erkrankungen-waisenkinder-der-medizin" &
getInhalt "http://www.netdoktor.de/magazin/aktionstag-schlaganfall-das-feuerrote-hirnmobil/" "aktionstag-schlaganfall-das-feuerrote-hirnmobil" &
getInhalt "http://www.netdoktor.de/magazin/genmutation-in-ecuador-das-krankheitsfreie-leben/" "genmutation-in-ecuador-das-krankheitsfreie-leben" &
getInhalt "http://www.netdoktor.de/magazin/extremsport-ganz-grosses-kopfkino/" "extremsport-ganz-grosses-kopfkino" &
getInhalt "http://www.netdoktor.de/magazin/hunde-riechen-tumoren-tierische-krebs-schnueffler/" "hunde-riechen-tumoren-tierische-krebs-schnueffler" &
getInhalt "http://www.netdoktor.de/magazin/transfette-in-lebensmitteln-fettfalle-fuers-gemuet/" "transfette-in-lebensmitteln-fettfalle-fuers-gemuet" &
getInhalt "http://www.netdoktor.de/magazin/hirnreifung-bei-ungeborenen-babyfasten-im-mutterleib/" "hirnreifung-bei-ungeborenen-babyfasten-im-mutterleib" &
getInhalt "http://www.netdoktor.de/magazin/diabetes-experten-chat-speck-weg-das-protokoll/" "diabetes-experten-chat-speck-weg-das-protokoll" &
getInhalt "http://www.netdoktor.de/magazin/test-auf-down-syndrom-spurensuche-im-mutterblut/" "test-auf-down-syndrom-spurensuche-im-mutterblut" &
