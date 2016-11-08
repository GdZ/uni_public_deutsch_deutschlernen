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

getMP3_PDF "75-millionen-analphabeten-in-deutschland" "/de/75-millionen-analphabeten-in-deutschland/a-15438644" &
getMP3_PDF "aids-aufklärung-statt-besserwisserei" "/de/aids-aufklärung-statt-besserwisserei/a-6560876" &
getMP3_PDF "amy-winehouse-zwischen-soulmusik-und-drogen" "/de/amy-winehouse-zwischen-soulmusik-und-drogen/a-15283401" &
getMP3_PDF "arbeiten-im-urlaub" "/de/arbeiten-im-urlaub/a-15253831" &
getMP3_PDF "arbeitskraft-aus-der-türkei" "/de/arbeitskraft-aus-der-türkei/a-15516158" &
getMP3_PDF "atomkraft-ist-nicht-sicher" "/de/atomkraft-ist-nicht-sicher/a-14911143" &
getMP3_PDF "bernd-eichinger-ein-leben-für-den-film" "/de/bernd-eichinger-ein-leben-für-den-film/a-14797794" &
getMP3_PDF "bildung-für-demokratie" "/de/bildung-für-demokratie/a-15381777" &
getMP3_PDF "christa-wolf-literatur-für-ost-und-west" "/de/christa-wolf-literatur-für-ost-und-west/a-15580392" &
getMP3_PDF "das-geschäft-mit-babys" "/de/das-geschäft-mit-babys/a-14886193" &
getMP3_PDF "das-goethe-institut-wird-60" "/de/das-goethe-institut-wird-60/a-15249060" &
getMP3_PDF "das-oktoberfest-mit-lebensfreude-gegen-terror" "/de/das-oktoberfest-mit-lebensfreude-gegen-terror/a-15408807" &
getMP3_PDF "datenklau-im-internet" "/de/datenklau-im-internet/a-15049601" &
getMP3_PDF "der-falsche-doktor" "/de/der-falsche-doktor/a-14870107" &
getMP3_PDF "der-kampf-um-die-menschenrechte" "/de/der-kampf-um-die-menschenrechte/a-15122579" &
getMP3_PDF "der-kampf-um-rohstoffe" "/de/der-kampf-um-rohstoffe/a-14899239" &
getMP3_PDF "der-prenzlauer-berg-berliner-in-viertel-mit-problemen" "/de/der-prenzlauer-berg-berliner-in-viertel-mit-problemen/a-15449784" &
getMP3_PDF "der-untergang-der-sowjetunion" "/de/der-untergang-der-sowjetunion/a-15335117" &
getMP3_PDF "der-wahre-shakespeare" "/de/der-wahre-shakespeare/a-15535807" &
getMP3_PDF "deutsche-sicherheitsbehörden-verstehen" "/de/deutsche-sicherheitsbehörden-verstehen/a-15562894" &
getMP3_PDF "deutschland-das-neue-urlaubsparadies" "/de/deutschland-das-neue-urlaubsparadies/a-15324080" &
getMP3_PDF "deutschland-land-der-kaffeeliebhaber" "/de/deutschland-land-der-kaffeeliebhaber/a-15387987" &
getMP3_PDF "die-ddr-und-der-alkohol" "/de/die-ddr-und-der-alkohol/a-15032728" &
getMP3_PDF "die-deutschen-und-ihr-auto-das-ende-einer-liebe" "/de/die-deutschen-und-ihr-auto-das-ende-einer-liebe/a-14965861" &
getMP3_PDF "die-homo-ehe-in-deutschland" "/de/die-homo-ehe-in-deutschland/a-15293698" &
getMP3_PDF "die-kunst-des-tätowierens" "/de/die-kunst-des-tätowierens/a-15209583" &
getMP3_PDF "die-lust-am-fasten" "/de/die-lust-am-fasten/a-14998411" &
getMP3_PDF "die-neue-pipeline-aus-russland" "/de/die-neue-pipeline-aus-russland/a-15520653" &
getMP3_PDF "die-neuen-deutschen-helden-sind-anders" "/de/die-neuen-deutschen-helden-sind-anders/a-15424663" &
getMP3_PDF "die-probleme-der-deutschen-bahn" "/de/die-probleme-der-deutschen-bahn/a-14811778" &
getMP3_PDF "die-waffen-bleiben" "/de/die-waffen-bleiben/a-14845795" &
getMP3_PDF "die-wahrheit-über-die-generation-porno" "/de/die-wahrheit-über-die-generation-porno/a-14841487" &
getMP3_PDF "die-weiße-rose" "/de/die-weiße-rose/a-14886280" &
getMP3_PDF "die-werbung-entdeckt-den-frauenfußball" "/de/die-werbung-entdeckt-den-frauenfußball/a-14982119" &
getMP3_PDF "duell-ums-ehrenamt-wer-folgt-michelle-obama" "/de/duell-ums-ehrenamt-wer-folgt-michelle-obama/a-36077267" &
getMP3_PDF "ein-leben-ohne-loriot-ist-möglich-aber-sinnlos" "/de/ein-leben-ohne-loriot-ist-möglich-aber-sinnlos/a-15342106" &
getMP3_PDF "ein-studienfach-mit-jobgarantie" "/de/ein-studienfach-mit-jobgarantie/a-14749152" &
getMP3_PDF "ein-zuhause-für-literatur" "/de/ein-zuhause-für-literatur/a-15107412" &
getMP3_PDF "erfolg-trotz-coca-cola" "/de/erfolg-trotz-coca-cola/a-6530451" &
getMP3_PDF "es-muss-nicht-immer-hochdeutsch-sein" "/de/es-muss-nicht-immer-hochdeutsch-sein/a-15466511" &
getMP3_PDF "fair-gehandelter-tee-aus-indien" "/de/fair-gehandelter-tee-aus-indien/a-15483841" &
getMP3_PDF "faire-produkte-haben-ihren-preis" "/de/faire-produkte-haben-ihren-preis/a-15317610" &
getMP3_PDF "faszination-wikipedia" "/de/faszination-wikipedia/a-14763970" &
getMP3_PDF "filme-gegen-den-frieden" "/de/filme-gegen-den-frieden/a-14858518" &
getMP3_PDF "firmen-unter-zensur" "/de/firmen-unter-zensur/a-14833134" &
getMP3_PDF "frauen-in-der-rechten-szene" "/de/frauen-in-der-rechten-szene/a-15156853" &
getMP3_PDF "fremdenhass-in-norwegen-und-ganz-europa" "/de/fremdenhass-in-norwegen-und-ganz-europa/a-15272951" &
getMP3_PDF "fußball-und-gewalt" "/de/fußball-und-gewalt/a-15506528" &
getMP3_PDF "gegen-gewalt-beim-fußball" "/de/gegen-gewalt-beim-fußball/a-14771743" &
getMP3_PDF "gemüsebauern-in-not" "/de/gemüsebauern-in-not/a-15135213" &
getMP3_PDF "gewalt-in-deutschen-städten" "/de/gewalt-in-deutschen-städten/a-14987070" &
getMP3_PDF "grünes-deutschland" "/de/grünes-deutschland/a-14971429" &
getMP3_PDF "hilfe-für-afrika" "/de/hilfe-für-afrika/a-15351080" &
getMP3_PDF "hiroshima-ein-deutscher-zeitzeuge-erzählt" "/de/hiroshima-ein-deutscher-zeitzeuge-erzählt/a-5871421" &
getMP3_PDF "hoffnung-für-alzheimerpatienten" "/de/hoffnung-für-alzheimerpatienten/a-14929707" &
getMP3_PDF "ideen-für-eine-bessere-welt" "/de/ideen-für-eine-bessere-welt/a-14807195" &
getMP3_PDF "in-deutschlands-kinos-lacht-man-wieder-öfter" "/de/in-deutschlands-kinos-lacht-man-wieder-öfter/a-15417342" &
getMP3_PDF "internet-die-neue-droge" "/de/internet-die-neue-droge/a-15424625" &
getMP3_PDF "kaiser-barbarossa" "/de/kaiser-barbarossa/a-15545830" &
getMP3_PDF "kaufrausch-vor-weihnachten" "/de/kaufrausch-vor-weihnachten/a-15596390" &
getMP3_PDF "kein-kölsch-in-düsseldorf" "/de/kein-kölsch-in-düsseldorf/a-15064680" &
getMP3_PDF "kein-platz-für-studenten" "/de/kein-platz-für-studenten/a-14824210" &
getMP3_PDF "keine-strategie-gegen-antisemitismus" "/de/keine-strategie-gegen-antisemitismus/a-15531490" &
getMP3_PDF "kinder-statt-karriere-sind-frauen-feige" "/de/kinder-statt-karriere-sind-frauen-feige/a-14879279" &
getMP3_PDF "kleider-machen-leute" "/de/kleider-machen-leute/a-14784697" &
getMP3_PDF "klimaopfer-kiefernwald" "/de/klimaopfer-kiefernwald/a-15552059" &
getMP3_PDF "kraftwerk-elektronische-volksmusik" "/de/kraftwerk-elektronische-volksmusik/a-15182713" &
getMP3_PDF "leben-auf-der-straße" "/de/leben-auf-der-straße/a-14950016" &
getMP3_PDF "leben-im-arbeitslager" "/de/leben-im-arbeitslager/a-15231286" &
getMP3_PDF "leben-im-kibbuz" "/de/leben-im-kibbuz/a-14775401" &
getMP3_PDF "libyen-und-gaddafi" "/de/libyen-und-gaddafi/a-14939512" &
getMP3_PDF "liebe-ohne-treue" "/de/liebe-ohne-treue/a-15142239" &
getMP3_PDF "lieder-für-millionen" "/de/lieder-für-millionen/a-15067934" &
getMP3_PDF "ludwig-van-beethoven-schwieriges-genie" "/de/ludwig-van-beethoven-schwieriges-genie/a-15456466" &
getMP3_PDF "mehr-flüchtlinge-weniger-spenden" "/de/mehr-flüchtlinge-weniger-spenden/a-36112604" &
getMP3_PDF "mit-humor-gegen-die-gesellschaft" "/de/mit-humor-gegen-die-gesellschaft/a-15568535" &
getMP3_PDF "omas-brille-ist-wieder-in" "/de/omas-brille-ist-wieder-in/a-15637332" &
getMP3_PDF "osama-bin-ladens-krieg" "/de/osama-bin-ladens-krieg/a-15044293" &
getMP3_PDF "piraten-im-parlament" "/de/piraten-im-parlament/a-15398956" &
getMP3_PDF "plastik-kommt-nicht-in-die-tüte" "/de/plastik-kommt-nicht-in-die-tüte/a-15100370" &
getMP3_PDF "politische-symbole-als-trendartikel" "/de/politische-symbole-als-trendartikel/a-14997621" &
getMP3_PDF "protest-gegen-banken" "/de/protest-gegen-banken/a-15473966" &
getMP3_PDF "radioaktive-nahrungsmittel" "/de/radioaktive-nahrungsmittel/a-14956384" &
getMP3_PDF "schutz-vor-unerwünschter-übernahme" "/de/schutz-vor-unerwünschter-übernahme/a-36116012" &
getMP3_PDF "secondhand-als-hobby" "/de/secondhand-als-hobby/a-15117276" &
getMP3_PDF "seniorenmode-stirbt-aus" "/de/seniorenmode-stirbt-aus/a-14760693" &
getMP3_PDF "singen-macht-schlau" "/de/singen-macht-schlau/a-15225647" &
getMP3_PDF "stammzellspender-gegen-leukämie" "/de/stammzellspender-gegen-leukämie/a-15499737" &
getMP3_PDF "steve-jobs-ein-revolutionär" "/de/steve-jobs-ein-revolutionär/a-15357492" &
getMP3_PDF "stresstest-ist-wort-des-jahres-2011" "/de/stresstest-ist-wort-des-jahres-2011/a-15618135" &
getMP3_PDF "tierfrei-essen-vegan-leben" "/de/tierfrei-essen-vegan-leben/a-15152281" &
getMP3_PDF "tod-auf-der-loveparade" "/de/tod-auf-der-loveparade/a-15264918" &
getMP3_PDF "trainingscamp-für-arbeitslose-fußballer" "/de/trainingscamp-für-arbeitslose-fußballer/a-15307581" &
getMP3_PDF "twittern-am-arbeitsplatz" "/de/twittern-am-arbeitsplatz/a-14749802" &
getMP3_PDF "türkische-kunden-gesucht" "/de/türkische-kunden-gesucht/a-15174913" &
getMP3_PDF "us-muslime-gegen-intoleranz" "/de/us-muslime-gegen-intoleranz/a-6613456" &
getMP3_PDF "von-bonn-nach-berlin" "/de/von-bonn-nach-berlin/a-15209528" &
getMP3_PDF "warten-auf-die-anerkennung" "/de/warten-auf-die-anerkennung/a-15585402" &
getMP3_PDF "weihnachten-für-alle" "/de/weihnachten-für-alle/a-15612879" &
getMP3_PDF "weihnachten-zu-jeder-jahreszeit" "/de/weihnachten-zu-jeder-jahreszeit/a-15622604" &
getMP3_PDF "weltmeisterinnen-am-ball" "/de/weltmeisterinnen-am-ball/a-6558624" &
getMP3_PDF "wer-reich-ist-lebt-länger" "/de/wer-reich-ist-lebt-länger/a-15601958" &
getMP3_PDF "wir-sind-helden" "/de/wir-sind-helden/a-15008565" &
getMP3_PDF "wird-die-todesstrafe-abgeschafft" "/de/wird-die-todesstrafe-abgeschafft/a-14917398" &
getMP3_PDF "zensus-2011" "/de/zensus-2011/a-15081335" &
getMP3_PDF "zu-wenig-platz-auf-der-erde" "/de/zu-wenig-platz-auf-der-erde/a-15490572" &
getMP3_PDF "zwischen-currywurst-und-feinkost" "/de/zwischen-currywurst-und-feinkost/a-15366009" &
