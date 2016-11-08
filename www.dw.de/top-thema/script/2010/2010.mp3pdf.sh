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

getMP3_PDF "15-jahre-hausarrest" "/de/15-jahre-hausarrest/a-6234428" &
getMP3_PDF "ali-ganz-unten" "/de/ali-ganz-unten/a-6263417" &
getMP3_PDF "anonym-bewerben" "/de/anonym-bewerben/a-5941983" &
getMP3_PDF "asyl-für-deutsche" "/de/asyl-für-deutsche/a-5200142" &
getMP3_PDF "basteln-im-wohnzimmer-der-erste-computer" "/de/basteln-im-wohnzimmer-der-erste-computer/a-5723902" &
getMP3_PDF "beethoven-ein-leben-für-die-musik" "/de/beethoven-ein-leben-für-die-musik/a-6050050" &
getMP3_PDF "bilder-auf-der-haut" "/de/bilder-auf-der-haut/a-5786947" &
getMP3_PDF "bitte-zahlen-sie-jetzt" "/de/bitte-zahlen-sie-jetzt/a-5914118" &
getMP3_PDF "boulevard-der-stars" "/de/boulevard-der-stars/a-6006141" &
getMP3_PDF "briefe-an-das-christkind" "/de/briefe-an-das-christkind/a-14731994" &
getMP3_PDF "campen-grillen-und-rocken" "/de/campen-grillen-und-rocken/a-5659136" &
getMP3_PDF "chefs-aus-dem-ausland" "/de/chefs-aus-dem-ausland/a-5606009" &
getMP3_PDF "computerspiele-für-spätzünder" "/de/computerspiele-für-spätzünder/a-5838234" &
getMP3_PDF "das-internet-der-zukunft" "/de/das-internet-der-zukunft/a-5091068" &
getMP3_PDF "das-leben-von-frédéric-chopin" "/de/das-leben-von-frédéric-chopin/a-5306783" &
getMP3_PDF "das-phänomen-aldi" "/de/das-phänomen-aldi/a-5274521" &
getMP3_PDF "das-sommerloch-ist-da" "/de/das-sommerloch-ist-da/a-5846142" &
getMP3_PDF "das-unwort-des-jahres-2009" "/de/das-unwort-des-jahres-2009/a-5150896" &
getMP3_PDF "der-deutsche-filmpreis" "/de/der-deutsche-filmpreis/a-5508565" &
getMP3_PDF "der-kniefall-von-warschau" "/de/der-kniefall-von-warschau/a-6310554" &
getMP3_PDF "der-literaturpapst" "/de/der-literaturpapst/a-5683101" &
getMP3_PDF "der-schicksalstag-der-deutschen" "/de/der-schicksalstag-der-deutschen/a-6220421" &
getMP3_PDF "der-vater-der-euro-münzen" "/de/der-vater-der-euro-münzen/a-5417400" &
getMP3_PDF "deutsch-lernen-in-afrika" "/de/deutsch-lernen-in-afrika/a-5173790" &
getMP3_PDF "deutsche-lieben-döner" "/de/deutsche-lieben-döner/a-5460886" &
getMP3_PDF "deutsche-sprache-schwere-sprache" "/de/deutsche-sprache-schwere-sprache/a-5254993" &
getMP3_PDF "deutschlernen-kann-süchtig-machen" "/de/deutschlernen-kann-süchtig-machen/a-5763040" &
getMP3_PDF "die-angst-vor-der-armut" "/de/die-angst-vor-der-armut/a-5689542" &
getMP3_PDF "die-fantastische-welt-der-fantasy" "/de/die-fantastische-welt-der-fantasy/a-6102017" &
getMP3_PDF "die-geschichte-der-konservendose" "/de/die-geschichte-der-konservendose/a-5533034" &
getMP3_PDF "die-grünen-eine-neue-volkspartei" "/de/die-grünen-eine-neue-volkspartei/a-6256090" &
getMP3_PDF "die-intelligente-hand" "/de/die-intelligente-hand/a-5515594" &
getMP3_PDF "die-lust-am-wandern" "/de/die-lust-am-wandern/a-5956257" &
getMP3_PDF "die-mutter-aller-buchmessen" "/de/die-mutter-aller-buchmessen/a-6086805" &
getMP3_PDF "die-nase-entscheidet" "/de/die-nase-entscheidet/a-5254884" &
getMP3_PDF "donnerstags-kein-fleisch" "/de/donnerstags-kein-fleisch/a-5085415" &
getMP3_PDF "dschihadisten-in-deutschland" "/de/dschihadisten-in-deutschland/a-5332943" &
getMP3_PDF "duell-ums-ehrenamt-wer-folgt-michelle-obama" "/de/duell-ums-ehrenamt-wer-folgt-michelle-obama/a-36077267" &
getMP3_PDF "ein-apfel-namens-ingrid" "/de/ein-apfel-namens-ingrid/a-5227961" &
getMP3_PDF "ein-besonderer-verein" "/de/ein-besonderer-verein/a-5587527" &
getMP3_PDF "ein-kinderbuch-das-jeder-kennt" "/de/ein-kinderbuch-das-jeder-kennt/a-5865718" &
getMP3_PDF "ein-land-braucht-hilfe" "/de/ein-land-braucht-hilfe/a-5139657" &
getMP3_PDF "ein-ort-für-ungewollte-babys" "/de/ein-ort-für-ungewollte-babys/a-5467792" &
getMP3_PDF "ein-vampir-zum-verlieben" "/de/ein-vampir-zum-verlieben/a-5822161" &
getMP3_PDF "eine-versicherung-gegen-terror" "/de/eine-versicherung-gegen-terror/a-6300088" &
getMP3_PDF "elvis-auf-türkisch" "/de/elvis-auf-türkisch/a-5124431" &
getMP3_PDF "erfolg-mit-kamelen" "/de/erfolg-mit-kamelen/a-5236199" &
getMP3_PDF "erst-die-politik-dann-das-studium" "/de/erst-die-politik-dann-das-studium/a-5151516" &
getMP3_PDF "fotografieren-kann-nicht-jeder" "/de/fotografieren-kann-nicht-jeder/a-6058254" &
getMP3_PDF "frauenrechte-im-libanon" "/de/frauenrechte-im-libanon/a-5817316" &
getMP3_PDF "gefährliche-dokumente" "/de/gefährliche-dokumente/a-6287052" &
getMP3_PDF "gemeinsam-klug" "/de/gemeinsam-klug/a-5859591" &
getMP3_PDF "geteiltes-auto-geteilte-kosten" "/de/geteiltes-auto-geteilte-kosten/a-5964933" &
getMP3_PDF "gleiches-geld-für-frauen" "/de/gleiches-geld-für-frauen/a-5581946" &
getMP3_PDF "helden-der-universität" "/de/helden-der-universität/a-6109850" &
getMP3_PDF "homosexuelle-im-fußball" "/de/homosexuelle-im-fußball/a-5386976" &
getMP3_PDF "ideen-für-volle-stadtkassen" "/de/ideen-für-volle-stadtkassen/a-5566550" &
getMP3_PDF "immer-mehr-chronische-krankheiten" "/de/immer-mehr-chronische-krankheiten/a-6203920" &
getMP3_PDF "in-neun-monaten-zum-profi" "/de/in-neun-monaten-zum-profi/a-5209539" &
getMP3_PDF "insolvenz-als-chance" "/de/insolvenz-als-chance/a-5108277" &
getMP3_PDF "jugend-nach-der-wende" "/de/jugend-nach-der-wende/a-6072485" &
getMP3_PDF "jung-und-heimatlos-in-deutschland" "/de/jung-und-heimatlos-in-deutschland/a-5363790" &
getMP3_PDF "kaffee-trinken-mit-echten-freunden" "/de/kaffee-trinken-mit-echten-freunden/a-5634501" &
getMP3_PDF "keine-angst-vor-knoblauch" "/de/keine-angst-vor-knoblauch/a-5561187" &
getMP3_PDF "kicken-mit-kopftuch" "/de/kicken-mit-kopftuch/a-6132323" &
getMP3_PDF "kindergarten-statt-straße" "/de/kindergarten-statt-straße/a-6123140" &
getMP3_PDF "klimawandel-im-himalaya" "/de/klimawandel-im-himalaya/a-6343883" &
getMP3_PDF "kontrolle-an-offenen-grenzen" "/de/kontrolle-an-offenen-grenzen/a-5417915" &
getMP3_PDF "kunst-für-die-nachbarn" "/de/kunst-für-die-nachbarn/a-14739597" &
getMP3_PDF "kunst-politik-und-provokation" "/de/kunst-politik-und-provokation/a-5936122" &
getMP3_PDF "leben-in-srebrenica" "/de/leben-in-srebrenica/a-5793275" &
getMP3_PDF "liebe-und-frieden-für-europa" "/de/liebe-und-frieden-für-europa/a-5628484" &
getMP3_PDF "mann-trägt-wieder-bart" "/de/mann-trägt-wieder-bart/a-6183303" &
getMP3_PDF "mehr-flüchtlinge-weniger-spenden" "/de/mehr-flüchtlinge-weniger-spenden/a-36112604" &
getMP3_PDF "mehr-freiheit-durch-weniger-konsum" "/de/mehr-freiheit-durch-weniger-konsum/a-5881366" &
getMP3_PDF "mehr-wirtschaft-in-der-schule" "/de/mehr-wirtschaft-in-der-schule/a-6182582" &
getMP3_PDF "mensch-und-affe" "/de/mensch-und-affe/a-5767776" &
getMP3_PDF "mobbing-im-internet" "/de/mobbing-im-internet/a-5865115" &
getMP3_PDF "modern-protestieren" "/de/modern-protestieren/a-6159696" &
getMP3_PDF "multikulti-auf-dem-fußballfeld" "/de/multikulti-auf-dem-fußballfeld/a-5716892" &
getMP3_PDF "muslime-in-den-usa" "/de/muslime-in-den-usa/a-6000484" &
getMP3_PDF "nach-dem-studium-wieder-in-die-heimat" "/de/nach-dem-studium-wieder-in-die-heimat/a-5878994" &
getMP3_PDF "nachhilfeunterricht-ist-gefragt" "/de/nachhilfeunterricht-ist-gefragt/a-5538097" &
getMP3_PDF "nirgendwo-zu-hause" "/de/nirgendwo-zu-hause/a-5070464" &
getMP3_PDF "partystadt-berlin" "/de/partystadt-berlin/a-5357087" &
getMP3_PDF "pelé-der-beste-fußballer-aller-zeiten" "/de/pelé-der-beste-fußballer-aller-zeiten/a-6149186" &
getMP3_PDF "ramadan-glaube-und-willenskraft" "/de/ramadan-glaube-und-willenskraft/a-5891232" &
getMP3_PDF "reise-in-den-tod" "/de/reise-in-den-tod/a-5611880" &
getMP3_PDF "schreibtisch-auf-zeit" "/de/schreibtisch-auf-zeit/a-5332487" &
getMP3_PDF "schutz-vor-unerwünschter-übernahme" "/de/schutz-vor-unerwünschter-übernahme/a-36116012" &
getMP3_PDF "schwarz-rot-gelb-und-grün" "/de/schwarz-rot-gelb-und-grün/a-5746823" &
getMP3_PDF "schwimmender-müll" "/de/schwimmender-müll/a-5379090" &
getMP3_PDF "schönheit-macht-erfolgreich" "/de/schönheit-macht-erfolgreich/a-5482027" &
getMP3_PDF "shakiras-großes-herz" "/de/shakiras-großes-herz/a-6324173" &
getMP3_PDF "shootingstar-der-astronomie" "/de/shootingstar-der-astronomie/a-6240697" &
getMP3_PDF "sommerzeit-und-winterzeit" "/de/sommerzeit-und-winterzeit/a-5409560" &
getMP3_PDF "sprachen-in-gefahr" "/de/sprachen-in-gefahr/a-5282703" &
getMP3_PDF "streit-um-googles-street-view" "/de/streit-um-googles-street-view/a-5914056" &
getMP3_PDF "tatort-deutschland" "/de/tatort-deutschland/a-6278148" &
getMP3_PDF "todesstrafe-in-saudi-arabien" "/de/todesstrafe-in-saudi-arabien/a-5313674" &
getMP3_PDF "tomatensaft-im-flugzeug" "/de/tomatensaft-im-flugzeug/a-6007389" &
getMP3_PDF "tore-rote-karten-und-pokale" "/de/tore-rote-karten-und-pokale/a-5667287" &
getMP3_PDF "unmögliche-und-mögliche-vornamen" "/de/unmögliche-und-mögliche-vornamen/a-5448467" &
getMP3_PDF "vom-kindergarten-bis-zum-abitur" "/de/vom-kindergarten-bis-zum-abitur/a-5490901" &
getMP3_PDF "was-tun-gegen-online-piraten" "/de/was-tun-gegen-online-piraten/a-5739160" &
getMP3_PDF "wenn-nichts-mehr-geht" "/de/wenn-nichts-mehr-geht/a-14742571" &
getMP3_PDF "wissenschaft-mal-anders" "/de/wissenschaft-mal-anders/a-6033086" &
getMP3_PDF "wutbürger-wort-des-jahres-2010" "/de/wutbürger-wort-des-jahres-2010/a-6360768" &
