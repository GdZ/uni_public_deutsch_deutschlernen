getInhalt()
{
	inhalt_url=$1
	name=$2
	echo wget ${inhalt_url} -o ${name}.log -O ${name}.html
	wget ${inhalt_url} -o ${name}.log -O ${name}.html
}

# test
getInhalt "http://www.netdoktor.de/magazin/vogelgrippe-neue-viren-alte-aengste/" "vogelgrippe-neue-viren-alte-aengste" &
getInhalt "http://www.netdoktor.de/magazin/bei-maennern-sehen-depressionen-anders-aus/" "bei-maennern-sehen-depressionen-anders-aus" &
getInhalt "http://www.netdoktor.de/magazin/kinder-fitness-immer-mehr-grobmotorische-moppel/" "kinder-fitness-immer-mehr-grobmotorische-moppel" &
getInhalt "http://www.netdoktor.de/magazin/grippewelle-alle-jahre-wieder/" "grippewelle-alle-jahre-wieder" &
getInhalt "http://www.netdoktor.de/magazin/grippe-wo-die-ansteckungsgefahr-am-groessten-ist/" "grippe-wo-die-ansteckungsgefahr-am-groessten-ist" &
getInhalt "http://www.netdoktor.de/magazin/diabetes-interview-man-kann-trotzdem-spass-am-leben-haben/" "diabetes-interview-man-kann-trotzdem-spass-am-leben-haben" &
getInhalt "http://www.netdoktor.de/magazin/haarentfernung-laser-gehoeren-in-aerztehaende/" "haarentfernung-laser-gehoeren-in-aerztehaende" &
getInhalt "http://www.netdoktor.de/magazin/leben-mit-tourette-einen-tick-anders/" "leben-mit-tourette-einen-tick-anders" &
getInhalt "http://www.netdoktor.de/magazin/tourette-ein-ganz-normales-phaenomen/" "tourette-ein-ganz-normales-phaenomen" &
getInhalt "http://www.netdoktor.de/magazin/ads-und-kreativitaet-die-grenze-zwischen-krankheit-und-kunst-ist-verwischt/" "ads-und-kreativitaet-die-grenze-zwischen-krankheit-und-kunst-ist-verwischt" &
getInhalt "http://www.netdoktor.de/magazin/blasenentzuendung-die-harnroehre-ist-ein-krisengebiet/" "blasenentzuendung-die-harnroehre-ist-ein-krisengebiet" &
getInhalt "http://www.netdoktor.de/magazin/diabetes-spuerhund-der-besondere-riecher/" "diabetes-spuerhund-der-besondere-riecher" &
getInhalt "http://www.netdoktor.de/magazin/autismus-von-hartz-iv-zum-arbeitsglueck/" "autismus-von-hartz-iv-zum-arbeitsglueck" &
getInhalt "http://www.netdoktor.de/magazin/autismus-computer-sind-interessanter-als-menschen/" "autismus-computer-sind-interessanter-als-menschen" &
getInhalt "http://www.netdoktor.de/magazin/herzkrankheiten-intensivstation-im-miniaturformat/" "herzkrankheiten-intensivstation-im-miniaturformat" &
getInhalt "http://www.netdoktor.de/magazin/autisten-im-arbeitsleben-die-aussergewoehnlichen/" "autisten-im-arbeitsleben-die-aussergewoehnlichen" &
getInhalt "http://www.netdoktor.de/magazin/krebs-angst-ist-kein-guter-ratgeber/" "krebs-angst-ist-kein-guter-ratgeber" &
getInhalt "http://www.netdoktor.de/magazin/brustkrebs-denke-jeden-tag-ich-hatte-glueck/" "brustkrebs-denke-jeden-tag-ich-hatte-glueck" &
getInhalt "http://www.netdoktor.de/magazin/zurueckgedrehte-bio-uhr/" "zurueckgedrehte-bio-uhr" &
getInhalt "http://www.netdoktor.de/magazin/gelenkprothesen-wir-operieren-keine-roentgenbilder/" "gelenkprothesen-wir-operieren-keine-roentgenbilder" &
getInhalt "http://www.netdoktor.de/magazin/erholung-laesst-sich-nicht-speichern/" "erholung-laesst-sich-nicht-speichern" &
getInhalt "http://www.netdoktor.de/magazin/stressabbau-polster-fuer-die-seele/" "stressabbau-polster-fuer-die-seele" &
getInhalt "http://www.netdoktor.de/magazin/sport-bei-krebs-tanzen-sie/" "sport-bei-krebs-tanzen-sie" &
getInhalt "http://www.netdoktor.de/magazin/sport-bei-krebs-fuehle-mich-wieder-lebendig/" "sport-bei-krebs-fuehle-mich-wieder-lebendig" &
getInhalt "http://www.netdoktor.de/magazin/darmkrebsvorsorge-das-u-boot-im-bauch/" "darmkrebsvorsorge-das-u-boot-im-bauch" &
getInhalt "http://www.netdoktor.de/magazin/sport-das-grosse-sitzen/" "sport-das-grosse-sitzen" &
getInhalt "http://www.netdoktor.de/magazin/bergunfaelle-abenteurer-die-zum-albtraum-werden/" "bergunfaelle-abenteurer-die-zum-albtraum-werden" &
getInhalt "http://www.netdoktor.de/magazin/selektive-wahrnehmung-der-gorilla-in-der-lunge/" "selektive-wahrnehmung-der-gorilla-in-der-lunge" &
getInhalt "http://www.netdoktor.de/magazin/down-syndrom-das-stummgeschaltete-dritte/" "down-syndrom-das-stummgeschaltete-dritte" &
getInhalt "http://www.netdoktor.de/magazin/in-der-suessstoff-falle/" "in-der-suessstoff-falle" &
getInhalt "http://www.netdoktor.de/magazin/hormoneffekt-warum-frauen-mehr-stress-vertragen/" "hormoneffekt-warum-frauen-mehr-stress-vertragen" &
getInhalt "http://www.netdoktor.de/magazin/therapeutisches-klettern-depressionen-am-haken/" "therapeutisches-klettern-depressionen-am-haken" &
getInhalt "http://www.netdoktor.de/magazin/autismus-im-jogginganzug-zum-abschlussball/" "autismus-im-jogginganzug-zum-abschlussball" &
getInhalt "http://www.netdoktor.de/magazin/adhs-wuschelige-therapeuten/" "adhs-wuschelige-therapeuten" &
getInhalt "http://www.netdoktor.de/magazin/bewegung-generation-bewegungsmuffel/" "bewegung-generation-bewegungsmuffel" &
getInhalt "http://www.netdoktor.de/magazin/lahmgelegte-neuronen/" "lahmgelegte-neuronen" &
getInhalt "http://www.netdoktor.de/magazin/uebergewicht-volle-teller/" "uebergewicht-volle-teller" &
getInhalt "http://www.netdoktor.de/magazin/schlaganfall-ich-gehe-auf-meinen-beinen-aus-der-reha/" "schlaganfall-ich-gehe-auf-meinen-beinen-aus-der-reha" &
getInhalt "http://www.netdoktor.de/magazin/schwimmen-kinder-ertrinken-leise/" "schwimmen-kinder-ertrinken-leise" &
getInhalt "http://www.netdoktor.de/magazin/multiple-sklerose-hoffen-auf-heilung/" "multiple-sklerose-hoffen-auf-heilung" &
getInhalt "http://www.netdoktor.de/magazin/querschnittslaehmung-wieder-auf-augenhoehe/" "querschnittslaehmung-wieder-auf-augenhoehe" &
getInhalt "http://www.netdoktor.de/magazin/wie-lebt-es-sich-mit-einem-spenderherz-mein-neues-herz-bollert-und-rumpelt/" "wie-lebt-es-sich-mit-einem-spenderherz-mein-neues-herz-bollert-und-rumpelt" &
getInhalt "http://www.netdoktor.de/magazin/transplantation-organspende-psychisch-enorme-staerke-abverlangt/" "transplantation-organspende-psychisch-enorme-staerke-abverlangt" &
getInhalt "http://www.netdoktor.de/magazin/rauchen-aufhoeren-gluecksgefuehle-nach-dem-zigarettenkonsum/" "rauchen-aufhoeren-gluecksgefuehle-nach-dem-zigarettenkonsum" &
getInhalt "http://www.netdoktor.de/magazin/loeschtaste-fuer-die-sucht/" "loeschtaste-fuer-die-sucht" &
getInhalt "http://www.netdoktor.de/magazin/gesundheitsstudie-so-gesund-ist-deutschland-wirklich/" "gesundheitsstudie-so-gesund-ist-deutschland-wirklich" &
getInhalt "http://www.netdoktor.de/magazin/schoenheitschirurgie-wenn-es-stoert-lass-es-machen/" "schoenheitschirurgie-wenn-es-stoert-lass-es-machen" &
getInhalt "http://www.netdoktor.de/magazin/interview-zu-hautalterung-haut-zaehlt-die-betriebsstunden/" "interview-zu-hautalterung-haut-zaehlt-die-betriebsstunden" &
getInhalt "http://www.netdoktor.de/magazin/magersucht-hungern-nach-leben/" "magersucht-hungern-nach-leben" &
getInhalt "http://www.netdoktor.de/magazin/bluthochdruck-sonnenlicht-als-herz-assistent/" "bluthochdruck-sonnenlicht-als-herz-assistent" &
getInhalt "http://www.netdoktor.de/magazin/eineiige-zwillinge-wer-sind-wir/" "eineiige-zwillinge-wer-sind-wir" &
getInhalt "http://www.netdoktor.de/magazin/krebspatienten-und-angehoerige-zwei-koepfe-denken-besser-als-einer/" "krebspatienten-und-angehoerige-zwei-koepfe-denken-besser-als-einer" &
getInhalt "http://www.netdoktor.de/magazin/hypnose-wir-schwingen-keine-pendel/" "hypnose-wir-schwingen-keine-pendel" &
getInhalt "http://www.netdoktor.de/magazin/tiefe-hirnstimulation-elektroden-gegen-die-schwermut/" "tiefe-hirnstimulation-elektroden-gegen-die-schwermut" &
getInhalt "http://www.netdoktor.de/magazin/hiv-selbsttest-fuer-daheim/" "hiv-selbsttest-fuer-daheim" &
getInhalt "http://www.netdoktor.de/magazin/darmkrebs-jedes-jahr-eine-stadt-so-gross-wie-landshut/" "darmkrebs-jedes-jahr-eine-stadt-so-gross-wie-landshut" &
getInhalt "http://www.netdoktor.de/magazin/kinder-von-krebspatienten-du-musst-dein-leben-weiterleben/" "kinder-von-krebspatienten-du-musst-dein-leben-weiterleben" &
getInhalt "http://www.netdoktor.de/magazin/angehoerige-von-krebspatienten-das-leiden-der-anderen/" "angehoerige-von-krebspatienten-das-leiden-der-anderen" &
getInhalt "http://www.netdoktor.de/magazin/alltagshilfe-fuer-senioren-sprechen-mit-der-wand/" "alltagshilfe-fuer-senioren-sprechen-mit-der-wand" &
getInhalt "http://www.netdoktor.de/magazin/fruehlingsgefuehle-fruehlingsgefuehle-kann-man-anknipsen/" "fruehlingsgefuehle-fruehlingsgefuehle-kann-man-anknipsen" &
getInhalt "http://www.netdoktor.de/magazin/heuschnupfen-manche-erleben-ein-echtes-waterloo/" "heuschnupfen-manche-erleben-ein-echtes-waterloo" &
getInhalt "http://www.netdoktor.de/magazin/gluecksspielsucht-geld-oder-leben-wenn-gluecksspiel-suechtig-macht/" "gluecksspielsucht-geld-oder-leben-wenn-gluecksspiel-suechtig-macht" &
getInhalt "http://www.netdoktor.de/magazin/ekeltherapie-fremdfaekalien-gegen-durchfall/" "ekeltherapie-fremdfaekalien-gegen-durchfall" &
getInhalt "http://www.netdoktor.de/magazin/psychiatrie-doppelt-aufpassen-was-man-diagnostiziert/" "psychiatrie-doppelt-aufpassen-was-man-diagnostiziert" &
getInhalt "http://www.netdoktor.de/magazin/psychatrie-neue-psychobibel-krank-ueber-nacht/" "psychatrie-neue-psychobibel-krank-ueber-nacht" &
getInhalt "http://www.netdoktor.de/magazin/menschen-mit-alzheimer-schwer-wenn-die-persoenlichkeit-vergeht/" "menschen-mit-alzheimer-schwer-wenn-die-persoenlichkeit-vergeht" &
getInhalt "http://www.netdoktor.de/magazin/alzheimerpatienten-weltmeister-der-emotionen/" "alzheimerpatienten-weltmeister-der-emotionen" &
getInhalt "http://www.netdoktor.de/magazin/boreout-krank-vor-langeweile/" "boreout-krank-vor-langeweile" &
getInhalt "http://www.netdoktor.de/magazin/herzinfarkt-das-sind-die-warnsignale-bei-frauen/" "herzinfarkt-das-sind-die-warnsignale-bei-frauen" &
getInhalt "http://www.netdoktor.de/magazin/krebs-das-britische-schamgefuehl/" "krebs-das-britische-schamgefuehl" &
getInhalt "http://www.netdoktor.de/magazin/netdoktor-blog-hoffnung-fuer-kondom-muffel/" "netdoktor-blog-hoffnung-fuer-kondom-muffel" &
getInhalt "http://www.netdoktor.de/magazin/stressreport-jeder-zweite-unter-druck/" "stressreport-jeder-zweite-unter-druck" &
getInhalt "http://www.netdoktor.de/magazin/diskussion-um-dopingfreigabe-es-gibt-keine-sichere-dosis/" "diskussion-um-dopingfreigabe-es-gibt-keine-sichere-dosis" &
getInhalt "http://www.netdoktor.de/magazin/training-wirkt-wie-beta-blocker/" "training-wirkt-wie-beta-blocker" &
getInhalt "http://www.netdoktor.de/magazin/dr-ed-pille-danach-per-post/" "dr-ed-pille-danach-per-post" &
getInhalt "http://www.netdoktor.de/magazin/morbus-parkinson-kostbare-stunden-der-freiheit/" "morbus-parkinson-kostbare-stunden-der-freiheit" &
getInhalt "http://www.netdoktor.de/magazin/fleischatlas-2013-die-gewaltige-fleischeslust/" "fleischatlas-2013-die-gewaltige-fleischeslust" &
