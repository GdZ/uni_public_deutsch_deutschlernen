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

getMP3_PDF "ab-wann-ist-der-mensch-ein-mensch" "/de/ab-wann-ist-der-mensch-ein-mensch/a-16340605" &
getMP3_PDF "afrikas-wirtschaft-im-aufschwung" "/de/afrikas-wirtschaft-im-aufschwung/a-16246743" &
getMP3_PDF "andere-länder-andere-kleider" "/de/andere-länder-andere-kleider/a-16323971" &
getMP3_PDF "angriff-auf-die-pressefreiheit" "/de/angriff-auf-die-pressefreiheit/a-15649700" &
getMP3_PDF "arbeiten-trotz-rente" "/de/arbeiten-trotz-rente/a-16218473" &
getMP3_PDF "auf-shoppingtour-im-alten-europa" "/de/auf-shoppingtour-im-alten-europa/a-15771656" &
getMP3_PDF "aufbruch-in-myanmar" "/de/aufbruch-in-myanmar/a-15934757" &
getMP3_PDF "aussitzen-wie-politiker-sich-in-krisen-verhalten" "/de/aussitzen-wie-politiker-sich-in-krisen-verhalten/a-15685877" &
getMP3_PDF "blinde-frauen-ertasten-brustkrebs" "/de/blinde-frauen-ertasten-brustkrebs/a-15905381" &
getMP3_PDF "böse-überraschung-im-advent" "/de/böse-überraschung-im-advent/a-16413308" &
getMP3_PDF "das-unwort-des-jahres-2011-döner-morde" "/de/das-unwort-des-jahres-2011-döner-morde/a-15674262" &
getMP3_PDF "der-große-friedrich" "/de/der-große-friedrich/a-15690634" &
getMP3_PDF "der-preis-des-geistigen-eigentums" "/de/der-preis-des-geistigen-eigentums/a-15839266" &
getMP3_PDF "der-räuber-hotzenplotz" "/de/der-räuber-hotzenplotz/a-16136301" &
getMP3_PDF "der-schöpfer-brasílias" "/de/der-schöpfer-brasílias/a-16442320" &
getMP3_PDF "der-wiener-maler-gustav-klimt" "/de/der-wiener-maler-gustav-klimt/a-16101169" &
getMP3_PDF "deutsch-französische-freunde" "/de/deutsch-französische-freunde/a-15954907" &
getMP3_PDF "deutsch-israelische-beziehungen" "/de/deutsch-israelische-beziehungen/a-16230019" &
getMP3_PDF "deutscher-mythos-adolf-hitler-und-die-autobahn" "/de/deutscher-mythos-adolf-hitler-und-die-autobahn/a-16148019" &
getMP3_PDF "die-hälfte-der-deutschen-ist-zu-dick" "/de/die-hälfte-der-deutschen-ist-zu-dick/a-16090782" &
getMP3_PDF "die-kunden-sind-online" "/de/die-kunden-sind-online/a-15949108" &
getMP3_PDF "die-presse-ist-frei" "/de/die-presse-ist-frei/a-16345935" &
getMP3_PDF "die-spiegel-affäre-und-ihre-folgen" "/de/die-spiegel-affäre-und-ihre-folgen/a-16307397" &
getMP3_PDF "die-toten-hosen-popstars-mit-haltung" "/de/die-toten-hosen-popstars-mit-haltung/a-15886345" &
getMP3_PDF "die-welt-im-oktoberfestfieber" "/de/die-welt-im-oktoberfestfieber/a-16257676" &
getMP3_PDF "dopingjäger-in-geldnot" "/de/dopingjäger-in-geldnot/a-15790022" &
getMP3_PDF "duell-ums-ehrenamt-wer-folgt-michelle-obama" "/de/duell-ums-ehrenamt-wer-folgt-michelle-obama/a-36077267" &
getMP3_PDF "ein-denkmal-gegen-das-vergessen" "/de/ein-denkmal-gegen-das-vergessen/a-16328801" &
getMP3_PDF "ein-friedhof-für-fußballfans" "/de/ein-friedhof-für-fußballfans/a-16459797" &
getMP3_PDF "ein-neuer-bundespräsident" "/de/ein-neuer-bundespräsident/a-15760843" &
getMP3_PDF "ein-ungewöhnlicher-schulausflug" "/de/ein-ungewöhnlicher-schulausflug/a-16212045" &
getMP3_PDF "eine-kindheit-für-den-sport" "/de/eine-kindheit-für-den-sport/a-16406400" &
getMP3_PDF "eine-ohrfeige-für-den-bundeskanzler" "/de/eine-ohrfeige-für-den-bundeskanzler/a-15779842" &
getMP3_PDF "einfach-ekelhaft" "/de/einfach-ekelhaft/a-16380731" &
getMP3_PDF "elfmeter-fordert-starke-nerven" "/de/elfmeter-fordert-starke-nerven/a-16048999" &
getMP3_PDF "energiewende-kostet-viel-geld" "/de/energiewende-kostet-viel-geld/a-15812869" &
getMP3_PDF "europa-wird-alt" "/de/europa-wird-alt/a-15669738" &
getMP3_PDF "ferienzeit-zeugniszeit" "/de/ferienzeit-zeugniszeit/a-16083748" &
getMP3_PDF "freiwillige-statt-zivis" "/de/freiwillige-statt-zivis/a-16068056" &
getMP3_PDF "fußball-gewalt-nach-plan" "/de/fußball-gewalt-nach-plan/a-15966156" &
getMP3_PDF "fußball-ja-folter-nein" "/de/fußball-ja-folter-nein/a-16014932" &
getMP3_PDF "gefährliche-keime-im-fleisch" "/de/gefährliche-keime-im-fleisch/a-15660795" &
getMP3_PDF "gewalt-hinter-gittern" "/de/gewalt-hinter-gittern/a-16180737" &
getMP3_PDF "gewaltbereite-salafisten" "/de/gewaltbereite-salafisten/a-15939057" &
getMP3_PDF "heile-welt-in-baku" "/de/heile-welt-in-baku/a-15975782" &
getMP3_PDF "hitlers-texte-bleiben-verboten" "/de/hitlers-texte-bleiben-verboten/a-15804663" &
getMP3_PDF "hohes-amt-wenig-macht" "/de/hohes-amt-wenig-macht/a-15818257" &
getMP3_PDF "homosexuelle-im-pfarrhaus" "/de/homosexuelle-im-pfarrhaus/a-15910324" &
getMP3_PDF "kampf-gegen-googles-suchergebnisse" "/de/kampf-gegen-googles-suchergebnisse/a-16234919" &
getMP3_PDF "kanzler-der-deutschen-einheit" "/de/kanzler-der-deutschen-einheit/a-16276260" &
getMP3_PDF "kapitän-auf-hoher-see" "/de/kapitän-auf-hoher-see/a-15708169" &
getMP3_PDF "karl-may-vom-kriminellen-zum-erfolgsautor" "/de/karl-may-vom-kriminellen-zum-erfolgsautor/a-15855089" &
getMP3_PDF "karneval-für-alle" "/de/karneval-für-alle/a-15745128" &
getMP3_PDF "kinderarbeit-in-steinbrüchen" "/de/kinderarbeit-in-steinbrüchen/a-16390438" &
getMP3_PDF "kinderarmut-in-deutschland" "/de/kinderarmut-in-deutschland/a-16278009" &
getMP3_PDF "kleinkinder-im-sprachkurs" "/de/kleinkinder-im-sprachkurs/a-15846082" &
getMP3_PDF "kriegsversehrte-als-spitzensportler" "/de/kriegsversehrte-als-spitzensportler/a-16221308" &
getMP3_PDF "lebensmittel-im-müll" "/de/lebensmittel-im-müll/a-16463203" &
getMP3_PDF "lesen-im-digitalen-zeitalter" "/de/lesen-im-digitalen-zeitalter/a-16296682" &
getMP3_PDF "lotte-reiniger-scherenschnitt-und-trickfilm" "/de/lotte-reiniger-scherenschnitt-und-trickfilm/a-16152515" &
getMP3_PDF "machen-computer-dumm" "/de/machen-computer-dumm/a-16185152" &
getMP3_PDF "medikamente-im-trinkwasser" "/de/medikamente-im-trinkwasser/a-16452541" &
getMP3_PDF "mehr-als-nur-eine-tote-sprache-latein" "/de/mehr-als-nur-eine-tote-sprache-latein/a-16250792" &
getMP3_PDF "mehr-flüchtlinge-weniger-spenden" "/de/mehr-flüchtlinge-weniger-spenden/a-36112604" &
getMP3_PDF "mehr-geld-für-chinesische-arbeiter" "/de/mehr-geld-für-chinesische-arbeiter/a-15703373" &
getMP3_PDF "mehr-geld-für-flüchtlinge-in-deutschland" "/de/mehr-geld-für-flüchtlinge-in-deutschland/a-16105662" &
getMP3_PDF "mehr-tote-durch-kältewelle" "/de/mehr-tote-durch-kältewelle/a-15728493" &
getMP3_PDF "migration-und-die-deutsche-sprache" "/de/migration-und-die-deutsche-sprache/a-16132037" &
getMP3_PDF "mit-erasmus-ins-ausland" "/de/mit-erasmus-ins-ausland/a-16034359" &
getMP3_PDF "mit-und-ohne-rollstuhl-gemeinsam-in-die-schule" "/de/mit-und-ohne-rollstuhl-gemeinsam-in-die-schule/a-15825230" &
getMP3_PDF "mittelschicht-in-deutschland-wird-kleiner" "/de/mittelschicht-in-deutschland-wird-kleiner/a-16473390" &
getMP3_PDF "muttersprache-hoch-im-kurs" "/de/muttersprache-hoch-im-kurs/a-15753337" &
getMP3_PDF "nach-dem-tod-zurück-in-die-heimat" "/de/nach-dem-tod-zurück-in-die-heimat/a-15654837" &
getMP3_PDF "neil-armstrong-der-erste-mensch-auf-dem-mond" "/de/neil-armstrong-der-erste-mensch-auf-dem-mond/a-16196124" &
getMP3_PDF "neonazi-morde-noch-ungeklärt" "/de/neonazi-morde-noch-ungeklärt/a-16357720" &
getMP3_PDF "neue-bodenschätze-in-deutschland" "/de/neue-bodenschätze-in-deutschland/a-15875132" &
getMP3_PDF "neue-zeiten-für-die-bundeswehr" "/de/neue-zeiten-für-die-bundeswehr/a-16039433" &
getMP3_PDF "nur-das-beste-für-das-haustier" "/de/nur-das-beste-für-das-haustier/a-16459060" &
getMP3_PDF "organspende-neue-hoffnung-für-kranke" "/de/organspende-neue-hoffnung-für-kranke/a-15985484" &
getMP3_PDF "passkontrolle-nach-hautfarbe" "/de/passkontrolle-nach-hautfarbe/a-15859220" &
getMP3_PDF "politiker-zeigen-transparenz" "/de/politiker-zeigen-transparenz/a-15892625" &
getMP3_PDF "politisches-engagement-von-unten" "/de/politisches-engagement-von-unten/a-15722435" &
getMP3_PDF "radio-damaskus-sendet-auf-deutsch" "/de/radio-damaskus-sendet-auf-deutsch/a-16312244" &
getMP3_PDF "ramadan-in-deutschland" "/de/ramadan-in-deutschland/a-16120162" &
getMP3_PDF "reif-für-die-uni" "/de/reif-für-die-uni/a-15771216" &
getMP3_PDF "rockerbanden-im-visier-der-politik" "/de/rockerbanden-im-visier-der-politik/a-15997576" &
getMP3_PDF "sagenhafte-geschichten-von-heute" "/de/sagenhafte-geschichten-von-heute/a-15983014" &
getMP3_PDF "schon-wieder-kaputt" "/de/schon-wieder-kaputt/a-16373556" &
getMP3_PDF "schutz-vor-unerwünschter-übernahme" "/de/schutz-vor-unerwünschter-übernahme/a-36116012" &
getMP3_PDF "sicherheit-statt-rebellion-jugendliche-in-deutschland" "/de/sicherheit-statt-rebellion-jugendliche-in-deutschland/a-16163068" &
getMP3_PDF "sri-lankas-langer-weg-zum-frieden" "/de/sri-lankas-langer-weg-zum-frieden/a-16072410" &
getMP3_PDF "stadtkinder-in-bewegung" "/de/stadtkinder-in-bewegung/a-15922085" &
getMP3_PDF "streit-um-müll" "/de/streit-um-müll/a-16004031" &
getMP3_PDF "studieren-in-deutschland" "/de/studieren-in-deutschland/a-15640432" &
getMP3_PDF "tod-auf-dem-mittelmeer" "/de/tod-auf-dem-mittelmeer/a-16292313" &
getMP3_PDF "vom-asylbewerber-zum-politiker" "/de/vom-asylbewerber-zum-politiker/a-16430357" &
getMP3_PDF "waffen-in-den-usa" "/de/waffen-in-den-usa/a-16123517" &
getMP3_PDF "wenn-der-bundespräsident-nein-sagt" "/de/wenn-der-bundespräsident-nein-sagt/a-16053696" &
getMP3_PDF "wenn-der-kirche-die-priester-fehlen" "/de/wenn-der-kirche-die-priester-fehlen/a-16397489" &
getMP3_PDF "wenn-die-stadt-sich-verkauft" "/de/wenn-die-stadt-sich-verkauft/a-16167980" &
getMP3_PDF "whitney-houston-eine-große-stimme-verstummt" "/de/whitney-houston-eine-große-stimme-verstummt/a-15740450" &
getMP3_PDF "wir-kaufen-einen-weihnachtsbaum" "/de/wir-kaufen-einen-weihnachtsbaum/a-16424667" &
getMP3_PDF "zoos-zwischen-artenschutz-und-tierquälerei" "/de/zoos-zwischen-artenschutz-und-tierquälerei/a-16269297" &
getMP3_PDF "zu-hause-studieren" "/de/zu-hause-studieren/a-15771087" &
getMP3_PDF "zurück-in-den-kosovo" "/de/zurück-in-den-kosovo/a-15912389" &
getMP3_PDF "zwischen-wohntraum-und-problem-viertel" "/de/zwischen-wohntraum-und-problem-viertel/a-16362440" &
