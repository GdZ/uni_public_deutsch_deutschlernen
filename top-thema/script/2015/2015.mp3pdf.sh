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

getMP3_PDF "1945-nie-wieder-krieg" "/de/1945-nie-wieder-krieg/a-18436126" &
getMP3_PDF "25-jahre-deutsche-einheit" "/de/25-jahre-deutsche-einheit/a-18751699" &
getMP3_PDF "30-jahre-rock-am-ring" "/de/30-jahre-rock-am-ring/a-18504814" &
getMP3_PDF "70-jahre-vereinte-nationen" "/de/70-jahre-vereinte-nationen/a-18806737" &
getMP3_PDF "abgas-skandal-bei-vw" "/de/abgas-skandal-bei-vw/a-18741080" &
getMP3_PDF "allein-im-nazi-dorf" "/de/allein-im-nazi-dorf/a-18698514" &
getMP3_PDF "arbeitsausbeutung-in-deutschland" "/de/arbeitsausbeutung-in-deutschland/a-18669402" &
getMP3_PDF "ausbildung-statt-studium" "/de/ausbildung-statt-studium/a-18933050" &
getMP3_PDF "auschwitz-gedenken-an-die-opfer" "/de/auschwitz-gedenken-an-die-opfer/a-18221767" &
getMP3_PDF "ausgestorben-und-bald-wieder-da" "/de/ausgestorben-und-bald-wieder-da/a-18444483" &
getMP3_PDF "auto-ohne-fahrer" "/de/auto-ohne-fahrer/a-18727866" &
getMP3_PDF "bevölkerungswachstum-gefahr-oder-chance" "/de/bevölkerungswachstum-gefahr-oder-chance/a-18638722" &
getMP3_PDF "bezahlen-für-deutsche-straßen" "/de/bezahlen-für-deutsche-straßen/a-18356998" &
getMP3_PDF "blatter-und-die-fifa-krise" "/de/blatter-und-die-fifa-krise/a-18494866" &
getMP3_PDF "boris-beckers-größter-erfolg" "/de/boris-beckers-größter-erfolg/a-18571393" &
getMP3_PDF "cannabis-eine-droge-als-medikament" "/de/cannabis-eine-droge-als-medikament/a-18304485" &
getMP3_PDF "cyber-angriff-auf-den-bundestag" "/de/cyber-angriff-auf-den-bundestag/a-18519728" &
getMP3_PDF "darf-man-gott-beleidigen" "/de/darf-man-gott-beleidigen/a-18200800" &
getMP3_PDF "das-ende-der-plastiktüte" "/de/das-ende-der-plastiktüte/a-18717112" &
getMP3_PDF "das-märchen-vom-bösen-wolf" "/de/das-märchen-vom-bösen-wolf/a-18365701" &
getMP3_PDF "demonstration-gegen-ttip" "/de/demonstration-gegen-ttip/a-18777507" &
getMP3_PDF "der-erste-frankfurter-auschwitz-prozess" "/de/der-erste-frankfurter-auschwitz-prozess/a-18661573" &
getMP3_PDF "der-fußball-soll-bunter-werden" "/de/der-fußball-soll-bunter-werden/a-18335266" &
getMP3_PDF "der-spaß-am-töten" "/de/der-spaß-am-töten/a-18246338" &
getMP3_PDF "der-vater-des-urmels-ist-tot" "/de/der-vater-des-urmels-ist-tot/a-18708344" &
getMP3_PDF "der-versunkene-schatz-der-karibik" "/de/der-versunkene-schatz-der-karibik/a-18907916" &
getMP3_PDF "deutsch-afrikanische-zusammenarbeit" "/de/deutsch-afrikanische-zusammenarbeit/a-18946282" &
getMP3_PDF "deutschland-und-das-thema-sex" "/de/deutschland-und-das-thema-sex/a-18556705" &
getMP3_PDF "deutschland-und-die-queen" "/de/deutschland-und-die-queen/a-18541419" &
getMP3_PDF "die-deutsche-presse-nach-dem-pariser-anschlag" "/de/die-deutsche-presse-nach-dem-pariser-anschlag/a-18186252" &
getMP3_PDF "die-deutschen-und-der-weihnachtsbaum" "/de/die-deutschen-und-der-weihnachtsbaum/a-18937508" &
getMP3_PDF "die-deutschen-und-ihre-charts" "/de/die-deutschen-und-ihre-charts/a-18490843" &
getMP3_PDF "die-schallplatte-lebt" "/de/die-schallplatte-lebt/a-18798124" &
getMP3_PDF "die-welt-redet-übers-klima" "/de/die-welt-redet-übers-klima/a-18889493" &
getMP3_PDF "dschihadisten-aus-belgien" "/de/dschihadisten-aus-belgien/a-18855029" &
getMP3_PDF "duell-ums-ehrenamt-wer-folgt-michelle-obama" "/de/duell-ums-ehrenamt-wer-folgt-michelle-obama/a-36077267" &
getMP3_PDF "ein-dorf-versinkt-im-meer" "/de/ein-dorf-versinkt-im-meer/a-18746717" &
getMP3_PDF "ein-dorf-versorgt-sich-selbst" "/de/ein-dorf-versorgt-sich-selbst/a-18534986" &
getMP3_PDF "ein-filmpreis-als-politisches-zeichen" "/de/ein-filmpreis-als-politisches-zeichen/a-18261247" &
getMP3_PDF "ein-gesetz-zur-sterbehilfe" "/de/ein-gesetz-zur-sterbehilfe/a-18837447" &
getMP3_PDF "ein-leben-mit-robotern" "/de/ein-leben-mit-robotern/a-18885215" &
getMP3_PDF "ein-protestcamp-von-flüchtlingen" "/de/ein-protestcamp-von-flüchtlingen/a-18624553" &
getMP3_PDF "ein-riesiges-loch-mitten-in-der-landschaft" "/de/ein-riesiges-loch-mitten-in-der-landschaft/a-18610365" &
getMP3_PDF "eine-krone-für-das-berliner-schloss" "/de/eine-krone-für-das-berliner-schloss/a-18527106" &
getMP3_PDF "eine-stadt-in-trauer" "/de/eine-stadt-in-trauer/a-18350214" &
getMP3_PDF "eine-tour-für-den-frieden" "/de/eine-tour-für-den-frieden/a-18876210" &
getMP3_PDF "endlich-ein-klimaabkommen" "/de/endlich-ein-klimaabkommen/a-18917269" &
getMP3_PDF "ex-kanzler-helmut-schmidt-ist-tot" "/de/ex-kanzler-helmut-schmidt-ist-tot/a-18843829" &
getMP3_PDF "flucht-aus-dem-kosovo" "/de/flucht-aus-dem-kosovo/a-18266374" &
getMP3_PDF "flüchtlinge-auf-dem-deutschen-arbeitsmarkt" "/de/flüchtlinge-auf-dem-deutschen-arbeitsmarkt/a-18783575" &
getMP3_PDF "flüchtlinge-auf-dem-weg-nach-deutschland" "/de/flüchtlinge-auf-dem-weg-nach-deutschland/a-18719320" &
getMP3_PDF "fremdenhass-in-heidenau" "/de/fremdenhass-in-heidenau/a-18679173" &
getMP3_PDF "gefährlicher-weg-nach-europa" "/de/gefährlicher-weg-nach-europa/a-18411842" &
getMP3_PDF "gefühlvolle-werbung-zu-weihnachten" "/de/gefühlvolle-werbung-zu-weihnachten/a-18900527" &
getMP3_PDF "gemüsebeete-mitten-in-der-stadt" "/de/gemüsebeete-mitten-in-der-stadt/a-18654947" &
getMP3_PDF "gemüseladen-oder-luxuswohnung" "/de/gemüseladen-oder-luxuswohnung/a-18589597" &
getMP3_PDF "gewalt-gegen-schiedsrichter" "/de/gewalt-gegen-schiedsrichter/a-18175565" &
getMP3_PDF "gleichberechtigung-für-muslime" "/de/gleichberechtigung-für-muslime/a-18481495" &
getMP3_PDF "grippewelle-in-deutschland" "/de/grippewelle-in-deutschland/a-18280991" &
getMP3_PDF "günter-grass-autor-und-moralische-instanz" "/de/günter-grass-autor-und-moralische-instanz/a-18379268" &
getMP3_PDF "hamburg-soll-olympia-nach-deutschland-holen" "/de/hamburg-soll-olympia-nach-deutschland-holen/a-18324020" &
getMP3_PDF "hitzewelle-sommerspaß-oder-klimawandel" "/de/hitzewelle-sommerspaß-oder-klimawandel/a-18616694" &
getMP3_PDF "homosexualität-in-deutschland" "/de/homosexualität-in-deutschland/a-18582079" &
getMP3_PDF "integration-durch-sport" "/de/integration-durch-sport/a-18869634" &
getMP3_PDF "is-kämpfer-vor-gericht" "/de/is-kämpfer-vor-gericht/a-18629600" &
getMP3_PDF "japan-kehrt-zur-atomkraft-zurück" "/de/japan-kehrt-zur-atomkraft-zurück/a-18645052" &
getMP3_PDF "jugendherbergen-anders-als-früher" "/de/jugendherbergen-anders-als-früher/a-18418984" &
getMP3_PDF "kein-charlie-hebdo-im-kölner-karneval" "/de/kein-charlie-hebdo-im-kölner-karneval/a-18250203" &
getMP3_PDF "kein-platz-für-afrikas-löwen" "/de/kein-platz-für-afrikas-löwen/a-18813192" &
getMP3_PDF "keine-gewalt-beim-g7-gipfel" "/de/keine-gewalt-beim-g7-gipfel/a-18507962" &
getMP3_PDF "keine-lust-mehr-auf-mcdonalds" "/de/keine-lust-mehr-auf-mcdonalds/a-18395419" &
getMP3_PDF "kinogeschichte-charlie-chaplin-und-adolf-hitler" "/de/kinogeschichte-charlie-chaplin-und-adolf-hitler/a-18923136" &
getMP3_PDF "kirchenasyl-für-flüchtlinge" "/de/kirchenasyl-für-flüchtlinge/a-18276073" &
getMP3_PDF "krieg-im-internet" "/de/krieg-im-internet/a-18862789" &
getMP3_PDF "kulturelles-erbe-in-gefahr" "/de/kulturelles-erbe-in-gefahr/a-18141397" &
getMP3_PDF "landwirtschaft-in-der-großstadt" "/de/landwirtschaft-in-der-großstadt/a-18343725" &
getMP3_PDF "lehrerinnen-dürfen-kopftuch-tragen" "/de/lehrerinnen-dürfen-kopftuch-tragen/a-18320443" &
getMP3_PDF "liebe-aus-dem-internet" "/de/liebe-aus-dem-internet/a-18428924" &
getMP3_PDF "lieber-bargeld-als-kreditkarte" "/de/lieber-bargeld-als-kreditkarte/a-18684428" &
getMP3_PDF "mehr-datenschutz-für-europa" "/de/mehr-datenschutz-für-europa/a-18766706" &
getMP3_PDF "mehr-flüchtlinge-weniger-spenden" "/de/mehr-flüchtlinge-weniger-spenden/a-36112604" &
getMP3_PDF "meinungsmache-im-us-radio" "/de/meinungsmache-im-us-radio/a-18714811" &
getMP3_PDF "merkelstreichelt" "/de/merkelstreichelt/a-18597643" &
getMP3_PDF "messerangriff-auf-kölner-politikerin" "/de/messerangriff-auf-kölner-politikerin/a-18791808" &
getMP3_PDF "prostitution-ein-job-wie-jeder-andere" "/de/prostitution-ein-job-wie-jeder-andere/a-18235777" &
getMP3_PDF "rettung-für-nashörner" "/de/rettung-für-nashörner/a-18192248" &
getMP3_PDF "richard-von-weizsäcker-ein-mann-des-wortes" "/de/richard-von-weizsäcker-ein-mann-des-wortes/a-18230783" &
getMP3_PDF "savants-menschen-mit-besonderer-begabung" "/de/savants-menschen-mit-besonderer-begabung/a-18385108" &
getMP3_PDF "schaden-durch-wirtschaftsspionage" "/de/schaden-durch-wirtschaftsspionage/a-18449137" &
getMP3_PDF "schutz-vor-unerwünschter-übernahme" "/de/schutz-vor-unerwünschter-übernahme/a-36116012" &
getMP3_PDF "schönheit-zum-kaufen" "/de/schönheit-zum-kaufen/a-18374460" &
getMP3_PDF "sexuelle-belästigung-normaler-alltag-im-büro" "/de/sexuelle-belästigung-normaler-alltag-im-büro/a-18293840" &
getMP3_PDF "sichere-taxis-für-frauen-in-ägypten" "/de/sichere-taxis-für-frauen-in-ägypten/a-18762340" &
getMP3_PDF "st-pauli-pinkelt-zurück" "/de/st-pauli-pinkelt-zurück/a-18308397" &
getMP3_PDF "streik-im-kindergarten" "/de/streik-im-kindergarten/a-18476036" &
getMP3_PDF "terror-gegen-touristen" "/de/terror-gegen-touristen/a-18550125" &
getMP3_PDF "verbotene-autorennen" "/de/verbotene-autorennen/a-18602517" &
getMP3_PDF "vulkanausbruch-gefahr-und-chance" "/de/vulkanausbruch-gefahr-und-chance/a-18466753" &
getMP3_PDF "warum-urlaubsfotos-auf-facebook-teuer-werden-könnten" "/de/warum-urlaubsfotos-auf-facebook-teuer-werden-könnten/a-18565146" &
getMP3_PDF "was-tun-mit-dschihadisten" "/de/was-tun-mit-dschihadisten/a-18402767" &
getMP3_PDF "wenn-die-nacht-nicht-mehr-dunkel-ist" "/de/wenn-die-nacht-nicht-mehr-dunkel-ist/a-18290611" &
getMP3_PDF "wie-aus-müll-ein-geschäft-wurde" "/de/wie-aus-müll-ein-geschäft-wurde/a-18690383" &
getMP3_PDF "wie-deutschland-flüchtlinge-verteilt" "/de/wie-deutschland-flüchtlinge-verteilt/a-18172668" &
getMP3_PDF "wie-ehrlich-ist-deutschlands-presse" "/de/wie-ehrlich-ist-deutschlands-presse/a-18822130" &
getMP3_PDF "winterliche-forschungsreisen-in-die-arktis" "/de/winterliche-forschungsreisen-in-die-arktis/a-18204928" &
getMP3_PDF "wohin-mit-dem-elektroschrott" "/de/wohin-mit-dem-elektroschrott/a-18458172" &
getMP3_PDF "wünscht-euch-was" "/de/wünscht-euch-was/a-18372631" &
getMP3_PDF "zu-wenig-öffentliches-wlan-in-deutschland" "/de/zu-wenig-öffentliches-wlan-in-deutschland/a-18215705" &
