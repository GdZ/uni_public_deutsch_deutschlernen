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

getMP3_PDF "150-jahre-sozialdemokratie" "/de/150-jahre-sozialdemokratie/a-16842444" &
getMP3_PDF "am-rechten-rand" "/de/am-rechten-rand/a-16474309" &
getMP3_PDF "amazon-schließt-kunden-aus" "/de/amazon-schließt-kunden-aus/a-17007729" &
getMP3_PDF "arbeiten-für-einen-euro" "/de/arbeiten-für-einen-euro/a-16985784" &
getMP3_PDF "autisten-neue-chancen-auf-dem-arbeitsmarkt" "/de/autisten-neue-chancen-auf-dem-arbeitsmarkt/a-16830993" &
getMP3_PDF "blick-aus-deutschland-auf-die-türkei" "/de/blick-aus-deutschland-auf-die-türkei/a-16874653" &
getMP3_PDF "bufdis-sind-gefragt" "/de/bufdis-sind-gefragt/a-17118370" &
getMP3_PDF "chef-sein-ist-nicht-leicht" "/de/chef-sein-ist-nicht-leicht/a-17158403" &
getMP3_PDF "das-erbe-der-welt-studieren" "/de/das-erbe-der-welt-studieren/a-16962944" &
getMP3_PDF "das-gold-der-bundesbank" "/de/das-gold-der-bundesbank/a-16632675" &
getMP3_PDF "der-dichter-georg-büchner" "/de/der-dichter-georg-büchner/a-17175421" &
getMP3_PDF "der-nsu-prozess-neonazis-vor-gericht" "/de/der-nsu-prozess-neonazis-vor-gericht/a-16796610" &
getMP3_PDF "der-papst-geht-in-rente" "/de/der-papst-geht-in-rente/a-16597083" &
getMP3_PDF "der-rhein-und-die-romantik" "/de/der-rhein-und-die-romantik/a-17014149" &
getMP3_PDF "deutschland-hat-gewählt" "/de/deutschland-hat-gewählt/a-17108270" &
getMP3_PDF "deutschland-sieht-fern" "/de/deutschland-sieht-fern/a-16653053" &
getMP3_PDF "deutschland-und-brasilien-als-wirtschaftspartner" "/de/deutschland-und-brasilien-als-wirtschaftspartner/a-16810010" &
getMP3_PDF "deutschlands-größter-literaturkritiker-ist-tot" "/de/deutschlands-größter-literaturkritiker-ist-tot/a-17102007" &
getMP3_PDF "deutschlands-hauptstadt-ist-reich-und-sexy" "/de/deutschlands-hauptstadt-ist-reich-und-sexy/a-17288261" &
getMP3_PDF "die-deutsch-französische-freundschaft" "/de/die-deutsch-französische-freundschaft/a-16549221" &
getMP3_PDF "die-deutschen-geheimdienste-und-die-nsa" "/de/die-deutschen-geheimdienste-und-die-nsa/a-16987594" &
getMP3_PDF "die-deutschen-und-der-tourismus" "/de/die-deutschen-und-der-tourismus/a-17014113" &
getMP3_PDF "die-donots-erobern-amerika" "/de/die-donots-erobern-amerika/a-16894856" &
getMP3_PDF "die-eu-wird-unbeliebter" "/de/die-eu-wird-unbeliebter/a-16856434" &
getMP3_PDF "die-geschwister-scholl-und-die-weiße-rose" "/de/die-geschwister-scholl-und-die-weiße-rose/a-16621155" &
getMP3_PDF "die-märchen-der-brüder-grimm" "/de/die-märchen-der-brüder-grimm/a-16499665" &
getMP3_PDF "die-zerstörerische-kraft-der-taifune" "/de/die-zerstörerische-kraft-der-taifune/a-17223013" &
getMP3_PDF "duell-ums-ehrenamt-wer-folgt-michelle-obama" "/de/duell-ums-ehrenamt-wer-folgt-michelle-obama/a-36077267" &
getMP3_PDF "ein-bankkonto-für-alle" "/de/ein-bankkonto-für-alle/a-17313795" &
getMP3_PDF "ein-hirsch-verändert-den-fußball" "/de/ein-hirsch-verändert-den-fußball/a-16707531" &
getMP3_PDF "eine-gedenkstätte-für-euthanasie-opfer" "/de/eine-gedenkstätte-für-euthanasie-opfer/a-16953169" &
getMP3_PDF "erfolg-durch-esoterik" "/de/erfolg-durch-esoterik/a-16503977" &
getMP3_PDF "eu-bürger-für-650000-euro" "/de/eu-bürger-für-650000-euro/a-17238119" &
getMP3_PDF "europas-thronfolger-müssen-warten" "/de/europas-thronfolger-müssen-warten/a-16785989" &
getMP3_PDF "fliegende-paketzusteller" "/de/fliegende-paketzusteller/a-17293433" &
getMP3_PDF "flüchtlingsdrama-an-europas-grenzen" "/de/flüchtlingsdrama-an-europas-grenzen/a-17143302" &
getMP3_PDF "frauen-spielen-anders" "/de/frauen-spielen-anders/a-16668468" &
getMP3_PDF "gefahr-auf-dem-meeresgrund" "/de/gefahr-auf-dem-meeresgrund/a-17045748" &
getMP3_PDF "gefahr-durch-mücken" "/de/gefahr-durch-mücken/a-16974415" &
getMP3_PDF "gemeinsam-helfen-im-internet" "/de/gemeinsam-helfen-im-internet/a-16721987" &
getMP3_PDF "gewalt-gegen-frauen" "/de/gewalt-gegen-frauen/a-16920636" &
getMP3_PDF "giftgaseinsätze-sind-kriegsverbrechen" "/de/giftgaseinsätze-sind-kriegsverbrechen/a-17067900" &
getMP3_PDF "gurlitts-kunstschatz-beschäftigt-die-justiz" "/de/gurlitts-kunstschatz-beschäftigt-die-justiz/a-17260364" &
getMP3_PDF "hochwasser-in-deutschland" "/de/hochwasser-in-deutschland/a-16863783" &
getMP3_PDF "homosexualität-an-schulen" "/de/homosexualität-an-schulen/a-17091927" &
getMP3_PDF "im-land-des-pferdesports" "/de/im-land-des-pferdesports/a-16936751" &
getMP3_PDF "immer-dem-unwetter-entgegen" "/de/immer-dem-unwetter-entgegen/a-17128422" &
getMP3_PDF "immerath-muss-sterben" "/de/immerath-muss-sterben/a-17312846" &
getMP3_PDF "kampf-gegen-steuerhinterziehung" "/de/kampf-gegen-steuerhinterziehung/a-16772214" &
getMP3_PDF "karneval-und-politik" "/de/karneval-und-politik/a-16592121" &
getMP3_PDF "katastrophenhilfe-mit-social-media" "/de/katastrophenhilfe-mit-social-media/a-16876798" &
getMP3_PDF "keine-olympischen-winterspiele-in-münchen" "/de/keine-olympischen-winterspiele-in-münchen/a-17219296" &
getMP3_PDF "kinderbücher-ohne-rassismus" "/de/kinderbücher-ohne-rassismus/a-16532208" &
getMP3_PDF "kinderprostitution-in-deutschland" "/de/kinderprostitution-in-deutschland/a-16998873" &
getMP3_PDF "kino-aus-bollywood" "/de/kino-aus-bollywood/a-16814096" &
getMP3_PDF "kükenmord-fürs-frühstücksei" "/de/kükenmord-fürs-frühstücksei/a-17076295" &
getMP3_PDF "lustloser-wahlkampf" "/de/lustloser-wahlkampf/a-17083388" &
getMP3_PDF "mach-es-selbst" "/de/mach-es-selbst/a-16508091" &
getMP3_PDF "marschieren-gegen-hass-und-antisemitismus" "/de/marschieren-gegen-hass-und-antisemitismus/a-16728892" &
getMP3_PDF "mehr-flüchtlinge-weniger-spenden" "/de/mehr-flüchtlinge-weniger-spenden/a-36112604" &
getMP3_PDF "mehr-hilfe-für-contergan-opfer" "/de/mehr-hilfe-für-contergan-opfer/a-16574583" &
getMP3_PDF "mehr-schutz-für-kinder" "/de/mehr-schutz-für-kinder/a-16520831" &
getMP3_PDF "mein-großvater-der-mörder" "/de/mein-großvater-der-mörder/a-17127824" &
getMP3_PDF "meister-des-politischen-kabaretts-gestorben" "/de/meister-des-politischen-kabaretts-gestorben/a-17242672" &
getMP3_PDF "mit-freunden-durch-die-alkoholsucht" "/de/mit-freunden-durch-die-alkoholsucht/a-17206953" &
getMP3_PDF "mord-am-sonntagabend" "/de/mord-am-sonntagabend/a-16734421" &
getMP3_PDF "mülltrennung-in-deutschland" "/de/mülltrennung-in-deutschland/a-17030290" &
getMP3_PDF "nachtleben-in-köln" "/de/nachtleben-in-köln/a-16586591" &
getMP3_PDF "new-york-isst-deutsch" "/de/new-york-isst-deutsch/a-16717295" &
getMP3_PDF "normales-arbeitsleben-trotz-hiv" "/de/normales-arbeitsleben-trotz-hiv/a-17266849" &
getMP3_PDF "papst-franziskus-hoffnung-auf-reformen" "/de/papst-franziskus-hoffnung-auf-reformen/a-16682161" &
getMP3_PDF "plastik-im-meer" "/de/plastik-im-meer/a-16763475" &
getMP3_PDF "platz-für-neue-ideen" "/de/platz-für-neue-ideen/a-17143343" &
getMP3_PDF "politik-und-verantwortung" "/de/politik-und-verantwortung/a-16887487" &
getMP3_PDF "schlechte-karrierechancen-für-frauen" "/de/schlechte-karrierechancen-für-frauen/a-16803409" &
getMP3_PDF "schreiben-gegen-das-sterben" "/de/schreiben-gegen-das-sterben/a-17053820" &
getMP3_PDF "schutz-vor-unerwünschter-übernahme" "/de/schutz-vor-unerwünschter-übernahme/a-36116012" &
getMP3_PDF "schweizer-gegen-grenze-für-managerlöhne" "/de/schweizer-gegen-grenze-für-managerlöhne/a-17253847" &
getMP3_PDF "schweizer-gegen-zu-hohe-managergehälter" "/de/schweizer-gegen-zu-hohe-managergehälter/a-16645287" &
getMP3_PDF "sexuelle-belästigung-im-alltag" "/de/sexuelle-belästigung-im-alltag/a-16556234" &
getMP3_PDF "skat-ist-kein-kinderspiel" "/de/skat-ist-kein-kinderspiel/a-17203642" &
getMP3_PDF "smog-über-dem-balkan" "/de/smog-über-dem-balkan/a-16608137" &
getMP3_PDF "sprachprobleme-mit-dem-arzt" "/de/sprachprobleme-mit-dem-arzt/a-16686399" &
getMP3_PDF "stille-auf-der-autobahn" "/de/stille-auf-der-autobahn/a-16927834" &
getMP3_PDF "technik-zum-weihnachtsfest" "/de/technik-zum-weihnachtsfest/a-17320263" &
getMP3_PDF "teures-wohnen-in-großstädten" "/de/teures-wohnen-in-großstädten/a-17040443" &
getMP3_PDF "tv-duelle-im-wahlkampf" "/de/tv-duelle-im-wahlkampf/a-17060817" &
getMP3_PDF "unglücklich-trotz-wohlstand" "/de/unglücklich-trotz-wohlstand/a-16745246" &
getMP3_PDF "unwort-des-jahres-2012" "/de/unwort-des-jahres-2012/a-16538402" &
getMP3_PDF "urlaub-im-kloster" "/de/urlaub-im-kloster/a-17181690" &
getMP3_PDF "us-spionage-möglicherweise-legal" "/de/us-spionage-möglicherweise-legal/a-17188381" &
getMP3_PDF "warum-brasilien-protestiert" "/de/warum-brasilien-protestiert/a-16909668" &
getMP3_PDF "was-darf-die-kunst" "/de/was-darf-die-kunst/a-16967090" &
getMP3_PDF "was-politiker-verdienen" "/de/was-politiker-verdienen/a-16750806" &
getMP3_PDF "was-wir-essen" "/de/was-wir-essen/a-16627251" &
getMP3_PDF "weihnachtsmärkte-rettung-für-das-kunsthandwerk" "/de/weihnachtsmärkte-rettung-für-das-kunsthandwerk/a-17281546" &
getMP3_PDF "weltweit-zahlreiche-menschen-ohne-strom" "/de/weltweit-zahlreiche-menschen-ohne-strom/a-16846110" &
getMP3_PDF "weltweite-überwachung" "/de/weltweite-überwachung/a-16903126" &
getMP3_PDF "wenn-der-mensch-friert" "/de/wenn-der-mensch-friert/a-16566027" &
getMP3_PDF "wenn-schüler-nicht-zur-schule-gehen" "/de/wenn-schüler-nicht-zur-schule-gehen/a-17166035" &
getMP3_PDF "wenn-sich-gesichter-nicht-unterscheiden" "/de/wenn-sich-gesichter-nicht-unterscheiden/a-17190360" &
getMP3_PDF "wie-zypern-in-die-krise-geriet" "/de/wie-zypern-in-die-krise-geriet/a-16698276" &
getMP3_PDF "wohnen-im-alter" "/de/wohnen-im-alter/a-16665392" &
getMP3_PDF "zeitarbeit-ausbeutung-oder-chance" "/de/zeitarbeit-ausbeutung-oder-chance/a-16947537" &
getMP3_PDF "zwei-spd-kanzler-zwei-regierungsstile" "/de/zwei-spd-kanzler-zwei-regierungsstile/a-17308025" &
getMP3_PDF "ökostrom-was-der-umwelt-wirklich-nutzt" "/de/ökostrom-was-der-umwelt-wirklich-nutzt/a-16708223" &
getMP3_PDF "überwachungstechnologie-aus-deutschland" "/de/überwachungstechnologie-aus-deutschland/a-16779745" &
