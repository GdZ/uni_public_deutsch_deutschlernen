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

getMP3_PDF "850-euro-für-alle" "/de/850-euro-für-alle/a-17763280" &
getMP3_PDF "alle-lieben-shakespeare" "/de/alle-lieben-shakespeare/a-17603850" &
getMP3_PDF "angst-vor-is-terror-in-deutschland" "/de/angst-vor-is-terror-in-deutschland/a-17922997" &
getMP3_PDF "auf-hoher-see-fürs-leben-lernen" "/de/auf-hoher-see-fürs-leben-lernen/a-17553844" &
getMP3_PDF "automobilclub-mit-image-schaden" "/de/automobilclub-mit-image-schaden/a-17391650" &
getMP3_PDF "beethovens-fidelio" "/de/beethovens-fidelio/a-17653067" &
getMP3_PDF "bienen-liefern-mehr-als-honig" "/de/bienen-liefern-mehr-als-honig/a-17375842" &
getMP3_PDF "cia-folter-und-die-schuld-europas" "/de/cia-folter-und-die-schuld-europas/a-18132928" &
getMP3_PDF "das-problem-mit-den-guten-noten" "/de/das-problem-mit-den-guten-noten/a-17846304" &
getMP3_PDF "das-recht-im-internet-vergessen-zu-werden" "/de/das-recht-im-internet-vergessen-zu-werden/a-17640642" &
getMP3_PDF "demonstration-endet-in-gewalt" "/de/demonstration-endet-in-gewalt/a-18025435" &
getMP3_PDF "der-deutsche-schiri-bei-der-wm" "/de/der-deutsche-schiri-bei-der-wm/a-17700633" &
getMP3_PDF "der-erste-weltkrieg-kein-thema-in-deutschland" "/de/der-erste-weltkrieg-kein-thema-in-deutschland/a-17749720" &
getMP3_PDF "der-fotograf-und-der-krieg" "/de/der-fotograf-und-der-krieg/a-17718946" &
getMP3_PDF "der-gameboy-mit-25-noch-beliebt" "/de/der-gameboy-mit-25-noch-beliebt/a-17587980" &
getMP3_PDF "deutschland-wird-fairer" "/de/deutschland-wird-fairer/a-17617906" &
getMP3_PDF "die-erfolgsgeschichte-von-aldi" "/de/die-erfolgsgeschichte-von-aldi/a-17802377" &
getMP3_PDF "die-fußball-wm-und-ihre-folgen" "/de/die-fußball-wm-und-ihre-folgen/a-17682979" &
getMP3_PDF "die-geschichte-eines-weihnachtslieds" "/de/die-geschichte-eines-weihnachtslieds/a-18121005" &
getMP3_PDF "die-große-angst-vor-dem-islam" "/de/die-große-angst-vor-dem-islam/a-18137516" &
getMP3_PDF "die-schweiz-auf-isolationskurs" "/de/die-schweiz-auf-isolationskurs/a-17421986" &
getMP3_PDF "die-vergangenheit-darf-nicht-vergessen-werden" "/de/die-vergangenheit-darf-nicht-vergessen-werden/a-17893749" &
getMP3_PDF "die-wellness-schulen" "/de/die-wellness-schulen/a-17343833" &
getMP3_PDF "die-welt-feiert-karneval" "/de/die-welt-feiert-karneval/a-17466085" &
getMP3_PDF "duell-ums-ehrenamt-wer-folgt-michelle-obama" "/de/duell-ums-ehrenamt-wer-folgt-michelle-obama/a-36077267" &
getMP3_PDF "ein-auto-mit-zukunft" "/de/ein-auto-mit-zukunft/a-18108702" &
getMP3_PDF "ein-besuch-auf-dem-weihnachtsmarkt" "/de/ein-besuch-auf-dem-weihnachtsmarkt/a-18105106" &
getMP3_PDF "ein-doktortitel-als-geschenk" "/de/ein-doktortitel-als-geschenk/a-17566507" &
getMP3_PDF "ein-großer-deutscher-schriftsteller-ist-tot" "/de/ein-großer-deutscher-schriftsteller-ist-tot/a-17982979" &
getMP3_PDF "ein-großer-titel-für-einen-großen-trainer" "/de/ein-großer-titel-für-einen-großen-trainer/a-17785412" &
getMP3_PDF "ein-neues-zuhause-für-demente-menschen" "/de/ein-neues-zuhause-für-demente-menschen/a-17408423" &
getMP3_PDF "ein-osterfest-für-alle-christen" "/de/ein-osterfest-für-alle-christen/a-17573880" &
getMP3_PDF "ein-schwieriges-jahr-für-europa" "/de/ein-schwieriges-jahr-für-europa/a-18159486" &
getMP3_PDF "ein-staat-nach-dem-völkermord" "/de/ein-staat-nach-dem-völkermord/a-17549516" &
getMP3_PDF "eine-ungewöhnliche-jugendzeitschrift" "/de/eine-ungewöhnliche-jugendzeitschrift/a-17736493" &
getMP3_PDF "eine-zweite-chance-auf-ausbildung" "/de/eine-zweite-chance-auf-ausbildung/a-17955791" &
getMP3_PDF "ernste-krankheit-depression" "/de/ernste-krankheit-depression/a-17979110" &
getMP3_PDF "erst-karriere-dann-kinder" "/de/erst-karriere-dann-kinder/a-18016706" &
getMP3_PDF "europa-hat-gewählt" "/de/europa-hat-gewählt/a-17663566" &
getMP3_PDF "europas-freiwillige-helfer" "/de/europas-freiwillige-helfer/a-17999931" &
getMP3_PDF "exsoldaten-bei-den-paralympics" "/de/exsoldaten-bei-den-paralympics/a-17503551" &
getMP3_PDF "familie-kann-alles-sein" "/de/familie-kann-alles-sein/a-17798424" &
getMP3_PDF "farbenspiel-live-helene-fischer-beschallt-jetzt-stadien" "/de/farbenspiel-live-helene-fischer-beschallt-jetzt-stadien/a-17968293" &
getMP3_PDF "französische-juden-in-angst" "/de/französische-juden-in-angst/a-18117196" &
getMP3_PDF "friede-freude-zuckerfest" "/de/friede-freude-zuckerfest/a-17824550" &
getMP3_PDF "fußball-ist-kopfsache" "/de/fußball-ist-kopfsache/a-18009688" &
getMP3_PDF "gefahr-durch-stress-am-arbeitsplatz" "/de/gefahr-durch-stress-am-arbeitsplatz/a-17877230" &
getMP3_PDF "gefährliche-videos-im-internet" "/de/gefährliche-videos-im-internet/a-17851740" &
getMP3_PDF "gegen-homophobie-im-fußball" "/de/gegen-homophobie-im-fußball/a-17359055" &
getMP3_PDF "herzen-smileys-co" "/de/herzen-smileys-co/a-18031675" &
getMP3_PDF "humanitäre-helfer-in-gefahr" "/de/humanitäre-helfer-in-gefahr/a-17869154" &
getMP3_PDF "im-schatten-des-kölner-doms" "/de/im-schatten-des-kölner-doms/a-17517494" &
getMP3_PDF "integration-geht-durch-den-magen" "/de/integration-geht-durch-den-magen/a-17537495" &
getMP3_PDF "internationaler-strafgerichtshof-gescheitert" "/de/internationaler-strafgerichtshof-gescheitert/a-18142629" &
getMP3_PDF "je-heller-desto-besser" "/de/je-heller-desto-besser/a-17369409" &
getMP3_PDF "jens-voigt-nimmt-abschied-vom-radsport" "/de/jens-voigt-nimmt-abschied-vom-radsport/a-17884858" &
getMP3_PDF "jerry-cotton-geht-nicht-in-rente" "/de/jerry-cotton-geht-nicht-in-rente/a-18074674" &
getMP3_PDF "kampf-gegen-ebola" "/de/kampf-gegen-ebola/a-17941534" &
getMP3_PDF "kampf-gegen-kinderprostitution-im-urlaub" "/de/kampf-gegen-kinderprostitution-im-urlaub/a-17677496" &
getMP3_PDF "kein-anspruch-auf-ethikunterricht-in-grundschulen" "/de/kein-anspruch-auf-ethikunterricht-in-grundschulen/a-17613349" &
getMP3_PDF "keine-rettung-für-haie" "/de/keine-rettung-für-haie/a-17928796" &
getMP3_PDF "keine-zukunft-für-hebammen" "/de/keine-zukunft-für-hebammen/a-17459890" &
getMP3_PDF "kiosksterben-in-deutschland" "/de/kiosksterben-in-deutschland/a-17427170" &
getMP3_PDF "konzerte-für-gehörlose" "/de/konzerte-für-gehörlose/a-17438739" &
getMP3_PDF "kritik-am-doppelpass" "/de/kritik-am-doppelpass/a-17533355" &
getMP3_PDF "mal-geliebt-mal-gehasst-wie-deutschland-die-usa-sieht" "/de/mal-geliebt-mal-gehasst-wie-deutschland-die-usa-sieht/a-17790827" &
getMP3_PDF "masern-müssen-nicht-sein" "/de/masern-müssen-nicht-sein/a-17908263" &
getMP3_PDF "max-und-moritz-keine-harmlose-lausbubengeschichte" "/de/max-und-moritz-keine-harmlose-lausbubengeschichte/a-17507861" &
getMP3_PDF "maximilian-schell-ein-leben-für-film-und-theater" "/de/maximilian-schell-ein-leben-für-film-und-theater/a-17406107" &
getMP3_PDF "mehr-flüchtlinge-weniger-spenden" "/de/mehr-flüchtlinge-weniger-spenden/a-36112604" &
getMP3_PDF "mehr-frauen-in-führungspositionen" "/de/mehr-frauen-in-führungspositionen/a-18092143" &
getMP3_PDF "mehr-freiheit-durch-facebook" "/de/mehr-freiheit-durch-facebook/a-17669296" &
getMP3_PDF "mit-schrottmaschinen-zum-auslandseinsatz" "/de/mit-schrottmaschinen-zum-auslandseinsatz/a-17964039" &
getMP3_PDF "muslime-fürchten-anti-islamische-stimmung" "/de/muslime-fürchten-anti-islamische-stimmung/a-17994719" &
getMP3_PDF "neue-medien-ja-aber-nicht-in-der-schule" "/de/neue-medien-ja-aber-nicht-in-der-schule/a-18085036" &
getMP3_PDF "neue-wege-im-kampf-gegen-drogen" "/de/neue-wege-im-kampf-gegen-drogen/a-17631269" &
getMP3_PDF "obdachlose-nicht-erwünscht" "/de/obdachlose-nicht-erwünscht/a-17732745" &
getMP3_PDF "offener-arbeitsmarkt-für-rumänen-und-bulgaren" "/de/offener-arbeitsmarkt-für-rumänen-und-bulgaren/a-17350985" &
getMP3_PDF "ort-der-erinnerung" "/de/ort-der-erinnerung/a-18038895" &
getMP3_PDF "philae-legt-sich-schlafen" "/de/philae-legt-sich-schlafen/a-18070073" &
getMP3_PDF "rama-hamida-will-deutsch-lernen" "/de/rama-hamida-will-deutsch-lernen/a-17816117" &
getMP3_PDF "rassismus-in-den-medien" "/de/rassismus-in-den-medien/a-17862594" &
getMP3_PDF "rassismus-vor-der-disko" "/de/rassismus-vor-der-disko/a-17646626" &
getMP3_PDF "rock-on-wacken-open-air-zum-25-mal" "/de/rock-on-wacken-open-air-zum-25-mal/a-17831118" &
getMP3_PDF "scheitern-verboten" "/de/scheitern-verboten/a-17398260" &
getMP3_PDF "schutz-vor-unerwünschter-übernahme" "/de/schutz-vor-unerwünschter-übernahme/a-36116012" &
getMP3_PDF "sehnsucht-nach-der-guten-alten-zeit" "/de/sehnsucht-nach-der-guten-alten-zeit/a-18037690" &
getMP3_PDF "sie-sind-wieder-da-monty-python" "/de/sie-sind-wieder-da-monty-python/a-17754087" &
getMP3_PDF "sotschi-und-die-menschenrechte" "/de/sotschi-und-die-menschenrechte/a-17339991" &
getMP3_PDF "stark-für-menschen-mit-behinderung" "/de/stark-für-menschen-mit-behinderung/a-17383638" &
getMP3_PDF "steuern-hinterziehen-volkssport-der-deutschen" "/de/steuern-hinterziehen-volkssport-der-deutschen/a-17492533" &
getMP3_PDF "streit-ums-abitur" "/de/streit-ums-abitur/a-17582073" &
getMP3_PDF "studenten-brauchen-mehr-geld-zum-leben" "/de/studenten-brauchen-mehr-geld-zum-leben/a-17478043" &
getMP3_PDF "tödliche-luft" "/de/tödliche-luft/a-17521450" &
getMP3_PDF "udo-jürgens-ist-tot" "/de/udo-jürgens-ist-tot/a-18148374" &
getMP3_PDF "viel-arbeit-bis-zum-welterbe" "/de/viel-arbeit-bis-zum-welterbe/a-17693615" &
getMP3_PDF "wenn-das-blut-nicht-reicht" "/de/wenn-das-blut-nicht-reicht/a-17710342" &
getMP3_PDF "wenn-russland-kein-gas-mehr-liefert" "/de/wenn-russland-kein-gas-mehr-liefert/a-17486341" &
getMP3_PDF "wenn-traditionen-lebensgefährlich-werden" "/de/wenn-traditionen-lebensgefährlich-werden/a-17835971" &
getMP3_PDF "wie-ein-pc-spiel-nur-in-echt" "/de/wie-ein-pc-spiel-nur-in-echt/a-17897671" &
getMP3_PDF "wie-man-seine-daten-schützen-kann" "/de/wie-man-seine-daten-schützen-kann/a-17908685" &
getMP3_PDF "wintersport-ohne-echten-schnee" "/de/wintersport-ohne-echten-schnee/a-17442881" &
getMP3_PDF "wo-sind-die-ärzte" "/de/wo-sind-die-ärzte/a-17596215" &
getMP3_PDF "wofür-facebook-whatsapp-braucht" "/de/wofür-facebook-whatsapp-braucht/a-17454493" &
getMP3_PDF "zu-viel-lernen-zu-wenig-engagement" "/de/zu-viel-lernen-zu-wenig-engagement/a-18062650" &
getMP3_PDF "züge-die-alleine-fahren" "/de/züge-die-alleine-fahren/a-18055158" &
getMP3_PDF "übernachten-in-der-favela" "/de/übernachten-in-der-favela/a-17770405" &
