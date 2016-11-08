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

getMP3_PDF "alles-halb-so-wild" "/de/alles-halb-so-wild/a-3898003" &
getMP3_PDF "alles-nur-weißwurst-und-kartoffeln" "/de/alles-nur-weißwurst-und-kartoffeln/a-3315147" &
getMP3_PDF "als-es-schokolade-regnete" "/de/als-es-schokolade-regnete/a-3452065" &
getMP3_PDF "amtsdeutsch-leicht-gemacht" "/de/amtsdeutsch-leicht-gemacht/a-3578244" &
getMP3_PDF "andersrum-im-stadion" "/de/andersrum-im-stadion/a-3810267" &
getMP3_PDF "armes-amerika" "/de/armes-amerika/a-3897352" &
getMP3_PDF "auf-der-suche-nach-dr-tod" "/de/auf-der-suche-nach-dr-tod/a-3504108" &
getMP3_PDF "berlusconi-und-die-liebe" "/de/berlusconi-und-die-liebe/a-3620499" &
getMP3_PDF "brain-drain-in-polen" "/de/brain-drain-in-polen/a-3292955" &
getMP3_PDF "buch-digital-das-e-book" "/de/buch-digital-das-e-book/a-3802484" &
getMP3_PDF "chinesische-großstadt-vom-deutschen-reißbrett" "/de/chinesische-großstadt-vom-deutschen-reißbrett/a-3059315" &
getMP3_PDF "das-gefährliche-erbe-des-vietnamkriegs" "/de/das-gefährliche-erbe-des-vietnamkriegs/a-3199505" &
getMP3_PDF "das-schicksal-der-iranischen-bahái" "/de/das-schicksal-der-iranischen-bahái/a-3435892" &
getMP3_PDF "der-digitale-beethoven" "/de/der-digitale-beethoven/a-3426556" &
getMP3_PDF "der-lange-kampf-um-gleichberechtigung" "/de/der-lange-kampf-um-gleichberechtigung/a-3793820" &
getMP3_PDF "der-letzte-weg-der-haustiere" "/de/der-letzte-weg-der-haustiere/a-3819571" &
getMP3_PDF "der-neue-bond" "/de/der-neue-bond/a-3764574" &
getMP3_PDF "der-regenschirmmörder" "/de/der-regenschirmmörder/a-3656461" &
getMP3_PDF "der-star-mit-den-blauen-augen" "/de/der-star-mit-den-blauen-augen/a-3702537" &
getMP3_PDF "der-urwald-in-deutschland" "/de/der-urwald-in-deutschland/a-3244641" &
getMP3_PDF "deutsche-rentner-in-der-türkei" "/de/deutsche-rentner-in-der-türkei/a-3755758" &
getMP3_PDF "deutsche-unternehmen-kehren-heim" "/de/deutsche-unternehmen-kehren-heim/a-3468899" &
getMP3_PDF "deutschland-ein-reich-der-wilden-tiere" "/de/deutschland-ein-reich-der-wilden-tiere/a-3393345" &
getMP3_PDF "deutschlands-arme-kinder" "/de/deutschlands-arme-kinder/a-3665535" &
getMP3_PDF "die-68er-bewegung-in-deutschland" "/de/die-68er-bewegung-in-deutschland/a-3530644" &
getMP3_PDF "die-denker-des-dschungels" "/de/die-denker-des-dschungels/a-3135502" &
getMP3_PDF "die-frau-hinter-der-kamera" "/de/die-frau-hinter-der-kamera/a-3709030" &
getMP3_PDF "die-jugend-spricht-anders" "/de/die-jugend-spricht-anders/a-3781751" &
getMP3_PDF "die-künstlerinsel-sylt" "/de/die-künstlerinsel-sylt/a-3037441" &
getMP3_PDF "die-roboter-kommen" "/de/die-roboter-kommen/a-3547484" &
getMP3_PDF "die-stadt-der-bücher" "/de/die-stadt-der-bücher/a-3128817" &
getMP3_PDF "die-verborgenen-schätze-der-arktis" "/de/die-verborgenen-schätze-der-arktis/a-3046103" &
getMP3_PDF "die-verlierer-des-bio-booms" "/de/die-verlierer-des-bio-booms/a-3143053" &
getMP3_PDF "die-verteidiger-des-chaco" "/de/die-verteidiger-des-chaco/a-3115211" &
getMP3_PDF "die-wahrheit-liegt-im-eis" "/de/die-wahrheit-liegt-im-eis/a-3166848" &
getMP3_PDF "dolly-zum-dinner" "/de/dolly-zum-dinner/a-3205160" &
getMP3_PDF "duell-ums-ehrenamt-wer-folgt-michelle-obama" "/de/duell-ums-ehrenamt-wer-folgt-michelle-obama/a-36077267" &
getMP3_PDF "durch-tabubruch-zum-erfolg" "/de/durch-tabubruch-zum-erfolg/a-3602770" &
getMP3_PDF "ein-besseres-leben-ohne-marken" "/de/ein-besseres-leben-ohne-marken/a-3373837" &
getMP3_PDF "ein-blick-in-die-urzeit" "/de/ein-blick-in-die-urzeit/a-3363070" &
getMP3_PDF "ein-migranten-fußballverein-auf-erfolgskurs" "/de/ein-migranten-fußballverein-auf-erfolgskurs/a-3648602" &
getMP3_PDF "ein-schloss-für-berlin" "/de/ein-schloss-für-berlin/a-3831784" &
getMP3_PDF "eine-deutsche-fernsehlegende" "/de/eine-deutsche-fernsehlegende/a-3882107" &
getMP3_PDF "eine-knolle-erobert-die-welt" "/de/eine-knolle-erobert-die-welt/a-3052956" &
getMP3_PDF "eine-welt-voller-gefühle" "/de/eine-welt-voller-gefühle/a-3520391" &
getMP3_PDF "einen-pass-für-jede-heimat" "/de/einen-pass-für-jede-heimat/a-3486068" &
getMP3_PDF "erinnern-und-wiedergutmachen-aktion-sühnezeichen" "/de/erinnern-und-wiedergutmachen-aktion-sühnezeichen/a-3326790" &
getMP3_PDF "erziehungslager-in-frankreich" "/de/erziehungslager-in-frankreich/a-3102049" &
getMP3_PDF "essen-aus-der-mülltonne" "/de/essen-aus-der-mülltonne/a-3283375" &
getMP3_PDF "eu-will-vergiftetes-spielzeug-verbieten" "/de/eu-will-vergiftetes-spielzeug-verbieten/a-3095078" &
getMP3_PDF "extremsport-lust-auf-nervenkitzel" "/de/extremsport-lust-auf-nervenkitzel/a-3088941" &
getMP3_PDF "fortschritte-in-der-aids-forschung" "/de/fortschritte-in-der-aids-forschung/a-3851397" &
getMP3_PDF "freie-sicht-auf-nackte" "/de/freie-sicht-auf-nackte/a-3613361" &
getMP3_PDF "für-jeden-kunden-einen-roman" "/de/für-jeden-kunden-einen-roman/a-3332754" &
getMP3_PDF "gegen-rassismus-im-klassenzimmer" "/de/gegen-rassismus-im-klassenzimmer/a-3860563" &
getMP3_PDF "geiselnehmer-oder-freiheitskämpfer" "/de/geiselnehmer-oder-freiheitskämpfer/a-3185292" &
getMP3_PDF "gesunde-bio-pommes-kein-problem" "/de/gesunde-bio-pommes-kein-problem/a-3417593" &
getMP3_PDF "gibt-es-volkskrankheiten" "/de/gibt-es-volkskrankheiten/a-3476108" &
getMP3_PDF "gute-spieleentwickler-werden-gesucht" "/de/gute-spieleentwickler-werden-gesucht/a-3213353" &
getMP3_PDF "heilpflanzen-als-geschäft" "/de/heilpflanzen-als-geschäft/a-3109081" &
getMP3_PDF "immer-beliebter-studieren-in-den-niederlanden" "/de/immer-beliebter-studieren-in-den-niederlanden/a-3355063" &
getMP3_PDF "jubiläum-für-die-schlümpfe" "/de/jubiläum-für-die-schlümpfe/a-3561221" &
getMP3_PDF "jung-und-ohne-zuhause-obdachlose-in-berlin" "/de/jung-und-ohne-zuhause-obdachlose-in-berlin/a-3260265" &
getMP3_PDF "kein-platz-für-atommüll" "/de/kein-platz-für-atommüll/a-3640121" &
getMP3_PDF "kriegsverbrechen-an-kongos-frauen" "/de/kriegsverbrechen-an-kongos-frauen/a-3685657" &
getMP3_PDF "kritik-in-deutschland-werden-frauen-schlecht-bezahlt" "/de/kritik-in-deutschland-werden-frauen-schlecht-bezahlt/a-3401692" &
getMP3_PDF "leben-im-ewigen-winter" "/de/leben-im-ewigen-winter/a-3158647" &
getMP3_PDF "liberal-für-deutschland-die-fdp" "/de/liberal-für-deutschland-die-fdp/a-3878537" &
getMP3_PDF "marschieren-für-den-frieden" "/de/marschieren-für-den-frieden/a-3223522" &
getMP3_PDF "mehr-flüchtlinge-weniger-spenden" "/de/mehr-flüchtlinge-weniger-spenden/a-36112604" &
getMP3_PDF "mehr-hilfe-für-drogenabhängige-in-afghanistan" "/de/mehr-hilfe-für-drogenabhängige-in-afghanistan/a-3231165" &
getMP3_PDF "mehr-mitwirkung-für-migranten" "/de/mehr-mitwirkung-für-migranten/a-3082723" &
getMP3_PDF "mikrokredite-hilfe-zur-selbsthilfe" "/de/mikrokredite-hilfe-zur-selbsthilfe/a-3736180" &
getMP3_PDF "mitgefühl-als-medizin" "/de/mitgefühl-als-medizin/a-3268636" &
getMP3_PDF "moderne-mafia" "/de/moderne-mafia/a-3714075" &
getMP3_PDF "moderner-antisemitismus" "/de/moderner-antisemitismus/a-3681277" &
getMP3_PDF "neue-heimat-für-muslime" "/de/neue-heimat-für-muslime/a-3748050" &
getMP3_PDF "nichts-als-leere-worte" "/de/nichts-als-leere-worte/a-3870540" &
getMP3_PDF "obama-ein-präsident-mit-ehrgeizigen-zielen" "/de/obama-ein-präsident-mit-ehrgeizigen-zielen/a-3771456" &
getMP3_PDF "orson-welles-filmkunst" "/de/orson-welles-filmkunst/a-3176612" &
getMP3_PDF "pripjat-das-vergessene-dorf-bei-tschernobyl" "/de/pripjat-das-vergessene-dorf-bei-tschernobyl/a-3307509" &
getMP3_PDF "rapperinnen-gegen-machos" "/de/rapperinnen-gegen-machos/a-3076273" &
getMP3_PDF "rock-me-amadeus-die-musik-legende-falco" "/de/rock-me-amadeus-die-musik-legende-falco/a-3409836" &
getMP3_PDF "scheidung-mit-grenzen" "/de/scheidung-mit-grenzen/a-3558346" &
getMP3_PDF "schmuck-statt-sex" "/de/schmuck-statt-sex/a-3729573" &
getMP3_PDF "schuften-im-mexikanischen-urlaubsparadies" "/de/schuften-im-mexikanischen-urlaubsparadies/a-3275921" &
getMP3_PDF "schutz-vor-unerwünschter-übernahme" "/de/schutz-vor-unerwünschter-übernahme/a-36116012" &
getMP3_PDF "sind-supergirls-zu-sexy" "/de/sind-supergirls-zu-sexy/a-3443852" &
getMP3_PDF "sprache-ist-identität" "/de/sprache-ist-identität/a-3149717" &
getMP3_PDF "späte-gerechtigkeit-für-spanische-ns-opfer" "/de/späte-gerechtigkeit-für-spanische-ns-opfer/a-3695496" &
getMP3_PDF "studieren-ohne-grenzen" "/de/studieren-ohne-grenzen/a-3300326" &
getMP3_PDF "touristen-treffen-terroristen" "/de/touristen-treffen-terroristen/a-3511534" &
getMP3_PDF "tödlicher-goldrausch-in-peru" "/de/tödlicher-goldrausch-in-peru/a-3348517" &
getMP3_PDF "umweltschutz-nur-zum-schein" "/de/umweltschutz-nur-zum-schein/a-3253215" &
getMP3_PDF "ungarn-die-rückkehr-des-marktstandes" "/de/ungarn-die-rückkehr-des-marktstandes/a-3340753" &
getMP3_PDF "untergrundkirchen-in-china" "/de/untergrundkirchen-in-china/a-3586362" &
getMP3_PDF "urlaub-im-weltall" "/de/urlaub-im-weltall/a-3122515" &
getMP3_PDF "voll-bis-obenhin" "/de/voll-bis-obenhin/a-3671572" &
getMP3_PDF "von-punkrock-zum-theater" "/de/von-punkrock-zum-theater/a-3897481" &
getMP3_PDF "wellness-im-kloster" "/de/wellness-im-kloster/a-3027298" &
getMP3_PDF "wenn-fliegen-zur-qual-wird" "/de/wenn-fliegen-zur-qual-wird/a-3382210" &
getMP3_PDF "wenn-jugendliche-zu-viel-alkohol-trinken" "/de/wenn-jugendliche-zu-viel-alkohol-trinken/a-3492845" &
getMP3_PDF "wenn-schriftsteller-fußball-spielen" "/de/wenn-schriftsteller-fußball-spielen/a-3191813" &
getMP3_PDF "werbung-die-nicht-wie-werbung-aussieht" "/de/werbung-die-nicht-wie-werbung-aussieht/a-3461018" &
getMP3_PDF "wie-deutsche-mode-die-welt-erobert" "/de/wie-deutsche-mode-die-welt-erobert/a-3842969" &
getMP3_PDF "wie-man-die-internet-zensur-in-china-austrickst" "/de/wie-man-die-internet-zensur-in-china-austrickst/a-3539916" &
getMP3_PDF "zu-wenig-nachwuchs-in-europa" "/de/zu-wenig-nachwuchs-in-europa/a-3593761" &
getMP3_PDF "zum-zahnarzt-nach-ungarn" "/de/zum-zahnarzt-nach-ungarn/a-3629193" &
