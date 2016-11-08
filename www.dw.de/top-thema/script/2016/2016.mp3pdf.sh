#!/bin/bash

getMP3_PDF()
{
	echo "========================================"
	folder=$1;
	mkdir -p $folder; cd $folder; pwd;
	rm -vf a-* *.pdf.* *.mp3.* *log index.* >> .del.log;

	## get page
	page_url="www.dw.de$2"
	case $page_url in
		'')
			echo "[get.page] ERROR!!!"
			;;
		*)
			echo "[get.page] $page_url";
			wget $page_url -o page.log;
			;;
	esac
	echo > tmp; mv a-* tmp;

	## get mp3
	mp3_url=`cat tmp | grep '.mp3' | grep 'input' | awk '{print $4}' | cut -d'"' -f2`
	case $mp3_url in
		'')
			# echo "[get.mp3] ERROR!!!!"
			# mp3_page_url="www.dw.de`cat tmp | grep '/overlay/media/de' | awk '{print $2}' | cut -d'"' -f2`"
			# wget $mp3_page_url -o mp3_page.log -O mp3_page
			# mp3_url=`cat mp3_page | grep '.mp3' | grep 'input' | awk '{print $4}' | cut -d'"' -f2`
			# echo "[get.mp3] $mp3_url"
			# wget $mp3_url -o mp3.log;
			# ======
			mp3_page_url=`cat tmp | grep '/overlay/media/de' | awk '{print $2}' | cut -d'"' -f2`
			for a in $mp3_page_url ;
			do
				cur_url="www.dw.de$a"
				echo "[get.page] $cur_url";
				wget $cur_url -o page.log -O mp3_page
				mp3_url=`cat mp3_page | grep -E '.mp3|.mp4|.flv' | grep 'input' | awk '{print $4}' | cut -d'"' -f2`
				case $mp3_url in
					'')
						echo "[get.mp3] ERROR!!!!"
						;;
					*)
						echo "[get.mp3] $mp3_url"
						wget $mp3_url -o mp3.log -O $folder.mp3
						;;
					esac
			done
			;;
		*)
			echo "[get.mp3] $mp3_url"
			wget $mp3_url -o mp3.log -O $folder.mp3;
		;;
	esac

	## get pdf
	pdf_url="www.dw.de`cat tmp | grep '.pdf' | cut -d'"' -f2`"
	case $pdf_url in
		''|'www.dw.de')
			echo "[get.pdf] ERROR!!!"
			;;
		*)
			echo "[get.pdf] $pdf_url"
			wget $pdf_url -o pdf.log -O $folder.pdf
			;;
	esac

	cd ..;
	echo "[SUCCESS!!!] get mp3 and pdf success!! ----------------------"
}

getMP3_PDF "arm-in-einem-reichen-land" "/de/arm-in-einem-reichen-land/a-19071067" &
getMP3_PDF "aufregung-um-den-brexit" "/de/aufregung-um-den-brexit/a-19294173" &
getMP3_PDF "bmw-ns-vergangenheit-und-verantwortung" "/de/bmw-ns-vergangenheit-und-verantwortung/a-19100273" &
getMP3_PDF "briefkastenfirmen-und-panama-papers" "/de/briefkastenfirmen-und-panama-papers/a-19168330" &
getMP3_PDF "dada-eine-antwort-auf-den-krieg" "/de/dada-eine-antwort-auf-den-krieg/a-19033764" &
getMP3_PDF "das-land-der-bastler-und-heimwerker" "/de/das-land-der-bastler-und-heimwerker/a-19315000" &
getMP3_PDF "david-bowie-der-meister-der-verwandlung-ist-tot" "/de/david-bowie-der-meister-der-verwandlung-ist-tot/a-18972282" &
getMP3_PDF "der-esc-europas-größte-musikshow" "/de/der-esc-europas-größte-musikshow/a-19250025" &
getMP3_PDF "der-karlspreis-für-den-papst" "/de/der-karlspreis-für-den-papst/a-19245321" &
getMP3_PDF "der-paartanz-kehrt-zurück" "/de/der-paartanz-kehrt-zurück/a-18976356" &
getMP3_PDF "der-vernichtungskrieg-der-wehrmacht" "/de/der-vernichtungskrieg-der-wehrmacht/a-19348764" &
getMP3_PDF "deutschland-und-polen-beziehungsprobe" "/de/deutschland-und-polen-beziehungsprobe/a-18965174" &
getMP3_PDF "deutschland-und-seine-königinnen" "/de/deutschland-und-seine-königinnen/a-19066209" &
getMP3_PDF "die-geheimdienstakten-einer-diktatur" "/de/die-geheimdienstakten-einer-diktatur/a-19184916" &
getMP3_PDF "die-rente-ist-nicht-sicher" "/de/die-rente-ist-nicht-sicher/a-19214602" &
getMP3_PDF "die-stolpersteine-ein-einzigartiges-denkmal" "/de/die-stolpersteine-ein-einzigartiges-denkmal/a-19261313" &
getMP3_PDF "die-welt-des-zirkus-roncalli" "/de/die-welt-des-zirkus-roncalli/a-19278293" &
getMP3_PDF "diskriminierung-im-deutschen-film" "/de/diskriminierung-im-deutschen-film/a-19007719" &
getMP3_PDF "donald-trumps-deutsche-wurzeln" "/de/donald-trumps-deutsche-wurzeln/a-19017897" &
getMP3_PDF "duell-ums-ehrenamt-wer-folgt-michelle-obama" "/de/duell-ums-ehrenamt-wer-folgt-michelle-obama/a-36077267" &
getMP3_PDF "ein-kalender-für-den-ramadan" "/de/ein-kalender-für-den-ramadan/a-19298479" &
getMP3_PDF "endstation-idomeni" "/de/endstation-idomeni/a-19282530" &
getMP3_PDF "erdoğan-versteht-keinen-spaß" "/de/erdoğan-versteht-keinen-spaß/a-19152202" &
getMP3_PDF "europa-nach-den-anschlägen-von-brüssel" "/de/europa-nach-den-anschlägen-von-brüssel/a-19137037" &
getMP3_PDF "frauen-im-islam" "/de/frauen-im-islam/a-18987992" &
getMP3_PDF "geflüchtete-frauen-zwischen-geldnot-und-gewalt" "/de/geflüchtete-frauen-zwischen-geldnot-und-gewalt/a-18958112" &
getMP3_PDF "graffiti-mehr-als-nur-schmierereien" "/de/graffiti-mehr-als-nur-schmierereien/a-19310292" &
getMP3_PDF "götz-george-und-kommissar-schimanski" "/de/götz-george-und-kommissar-schimanski/a-19365692" &
getMP3_PDF "hass-im-internet-gewalt-auf-der-straße" "/de/hass-im-internet-gewalt-auf-der-straße/a-19036572" &
getMP3_PDF "hitlers-mein-kampf-erscheint-wieder" "/de/hitlers-mein-kampf-erscheint-wieder/a-18952131" &
getMP3_PDF "jüdische-biertradition" "/de/jüdische-biertradition/a-19196580" &
getMP3_PDF "kampf-gegen-das-chaos-die-litfaßsäule" "/de/kampf-gegen-das-chaos-die-litfaßsäule/a-19050167" &
getMP3_PDF "karneval-für-nicht-rheinländer" "/de/karneval-für-nicht-rheinländer/a-19028630" &
getMP3_PDF "kein-schutz-für-whistleblower" "/de/kein-schutz-für-whistleblower/a-19218583" &
getMP3_PDF "küken-töten-erlaubt" "/de/küken-töten-erlaubt/a-19132163" &
getMP3_PDF "küssen-hier-beliebt-da-verboten-dort-unwichtig" "/de/küssen-hier-beliebt-da-verboten-dort-unwichtig/a-19382408" &
getMP3_PDF "mehr-flüchtlinge-weniger-spenden" "/de/mehr-flüchtlinge-weniger-spenden/a-36112604" &
getMP3_PDF "mit-flüchtlingen-durchs-museum" "/de/mit-flüchtlingen-durchs-museum/a-19003420" &
getMP3_PDF "morddrohungen-gegen-politiker" "/de/morddrohungen-gegen-politiker/a-19327224" &
getMP3_PDF "ohne-turnhallen-kein-sport" "/de/ohne-turnhallen-kein-sport/a-19083138" &
getMP3_PDF "partnerwahl-von-heute" "/de/partnerwahl-von-heute/a-19054434" &
getMP3_PDF "schutz-vor-unerwünschter-übernahme" "/de/schutz-vor-unerwünschter-übernahme/a-36116012" &
getMP3_PDF "schwere-zeiten-für-frankreich" "/de/schwere-zeiten-für-frankreich/a-19332097" &
getMP3_PDF "schüler-kurz-vor-dem-abitur-die-mottowoche" "/de/schüler-kurz-vor-dem-abitur-die-mottowoche/a-19120835" &
getMP3_PDF "so-reagiert-berlin-auf-den-brexit" "/de/so-reagiert-berlin-auf-den-brexit/a-19360431" &
getMP3_PDF "spielzeug-luther-auf-weltreise" "/de/spielzeug-luther-auf-weltreise/a-19201599" &
getMP3_PDF "töchter-unerwünscht" "/de/töchter-unerwünscht/a-19105046" &
getMP3_PDF "umweltschützer-gegen-kaffeekapseln" "/de/umweltschützer-gegen-kaffeekapseln/a-19179277" &
getMP3_PDF "urlaub-in-nordkorea" "/de/urlaub-in-nordkorea/a-19088013" &
getMP3_PDF "wahl-in-deutschland-afd-gewinnt-stimmen" "/de/wahl-in-deutschland-afd-gewinnt-stimmen/a-19116386" &
getMP3_PDF "was-tun-mit-dem-atommüll" "/de/was-tun-mit-dem-atommüll/a-19229759" &
getMP3_PDF "wenn-man-klüger-ist-als-die-anderen" "/de/wenn-man-klüger-ist-als-die-anderen/a-19234323" &
getMP3_PDF "wer-will-zur-bundeswehr" "/de/wer-will-zur-bundeswehr/a-19377343" &
getMP3_PDF "wie-bio-ist-biofleisch" "/de/wie-bio-ist-biofleisch/a-19344525" &
getMP3_PDF "wie-die-digitalisierung-der-umwelt-schadet" "/de/wie-die-digitalisierung-der-umwelt-schadet/a-19266669" &
getMP3_PDF "wie-gefährlich-sind-fitness-apps" "/de/wie-gefährlich-sind-fitness-apps/a-19146535" &
getMP3_PDF "wie-landwirtschaft-der-umwelt-schadet" "/de/wie-landwirtschaft-der-umwelt-schadet/a-18994472" &
getMP3_PDF "zum-tod-von-hans-dietrich-genscher" "/de/zum-tod-von-hans-dietrich-genscher/a-19164090" &
