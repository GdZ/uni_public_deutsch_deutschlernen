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

getMP3_PDF "abitur-und-dann" "/de/abitur-und-dann/a-4502727" &
getMP3_PDF "anders-bauen-für-ein-besseres-leben" "/de/anders-bauen-für-ein-besseres-leben/a-4201826" &
getMP3_PDF "anne-frank-gefangen-im-hinterhaus" "/de/anne-frank-gefangen-im-hinterhaus/a-4450477" &
getMP3_PDF "anonym-zum-arzt" "/de/anonym-zum-arzt/a-4131611" &
getMP3_PDF "arbeit-unter-angst" "/de/arbeit-unter-angst/a-4579297" &
getMP3_PDF "arm-aber-sexy" "/de/arm-aber-sexy/a-4026211" &
getMP3_PDF "auf-der-suche-nach-touristen" "/de/auf-der-suche-nach-touristen/a-4485181" &
getMP3_PDF "ausverkauf-der-kaufhäuser" "/de/ausverkauf-der-kaufhäuser/a-4250347" &
getMP3_PDF "balkonien-oder-doch-mallorca" "/de/balkonien-oder-doch-mallorca/a-4166646" &
getMP3_PDF "beiruts-rosa-taxis" "/de/beiruts-rosa-taxis/a-4211989" &
getMP3_PDF "blut-und-spiele" "/de/blut-und-spiele/a-4094910" &
getMP3_PDF "brutale-unterhaltung" "/de/brutale-unterhaltung/a-4812835" &
getMP3_PDF "chinas-durst-nach-öl" "/de/chinas-durst-nach-öl/a-4834877" &
getMP3_PDF "darwins-revolution" "/de/darwins-revolution/a-4006723" &
getMP3_PDF "das-deutsche-tagebucharchiv" "/de/das-deutsche-tagebucharchiv/a-4052093" &
getMP3_PDF "das-ende-der-ddr" "/de/das-ende-der-ddr/a-4874909" &
getMP3_PDF "das-geheimnis-der-ostereier" "/de/das-geheimnis-der-ostereier/a-4176869" &
getMP3_PDF "das-geschäft-mit-dem-handy" "/de/das-geschäft-mit-dem-handy/a-3899365" &
getMP3_PDF "das-große-schweigen" "/de/das-große-schweigen/a-4320747" &
getMP3_PDF "das-unwort-des-jahres" "/de/das-unwort-des-jahres/a-3976613" &
getMP3_PDF "der-fanbeauftragte" "/de/der-fanbeauftragte/a-4863906" &
getMP3_PDF "der-letzte-mauertote" "/de/der-letzte-mauertote/a-4016990" &
getMP3_PDF "der-moonwalk-bleibt" "/de/der-moonwalk-bleibt/a-4434771" &
getMP3_PDF "der-schmetterling-im-boxring" "/de/der-schmetterling-im-boxring/a-4061285" &
getMP3_PDF "der-umstrittene-papst" "/de/der-umstrittene-papst/a-4149205" &
getMP3_PDF "der-vermesser-der-welt" "/de/der-vermesser-der-welt/a-4298424" &
getMP3_PDF "deutsch-fürs-visum" "/de/deutsch-fürs-visum/a-3999351" &
getMP3_PDF "deutsch-lernen-in-hanoi" "/de/deutsch-lernen-in-hanoi/a-5002168" &
getMP3_PDF "deutsche-leser-lieben-krimis" "/de/deutsche-leser-lieben-krimis/a-4646024" &
getMP3_PDF "die-kinderautoren" "/de/die-kinderautoren/a-4305221" &
getMP3_PDF "die-modernen-väter" "/de/die-modernen-väter/a-4882447" &
getMP3_PDF "die-schallplatte-kommt-wieder" "/de/die-schallplatte-kommt-wieder/a-4621825" &
getMP3_PDF "die-schweizer-sagen-nein" "/de/die-schweizer-sagen-nein/a-4990544" &
getMP3_PDF "die-supertalente" "/de/die-supertalente/a-4527278" &
getMP3_PDF "duell-ums-ehrenamt-wer-folgt-michelle-obama" "/de/duell-ums-ehrenamt-wer-folgt-michelle-obama/a-36077267" &
getMP3_PDF "ein-besseres-leben-durch-fremdsprachen" "/de/ein-besseres-leben-durch-fremdsprachen/a-4746759" &
getMP3_PDF "ein-bett-für-alle" "/de/ein-bett-für-alle/a-4069304" &
getMP3_PDF "ein-europa-viele-größen" "/de/ein-europa-viele-größen/a-4122757" &
getMP3_PDF "ein-konto-als-weg-aus-der-prostitution" "/de/ein-konto-als-weg-aus-der-prostitution/a-4469054" &
getMP3_PDF "ein-modelabel-für-muslime" "/de/ein-modelabel-für-muslime/a-4215230" &
getMP3_PDF "ein-politischer-pionier" "/de/ein-politischer-pionier/a-4578116" &
getMP3_PDF "eine-hundehütte-für-den-bundeskanzler" "/de/eine-hundehütte-für-den-bundeskanzler/a-4194295" &
getMP3_PDF "eine-richtige-verfassung" "/de/eine-richtige-verfassung/a-4281124" &
getMP3_PDF "erfolg-mit-links" "/de/erfolg-mit-links/a-4077546" &
getMP3_PDF "erholung-mit-disziplin" "/de/erholung-mit-disziplin/a-4246587" &
getMP3_PDF "essen-ohne-geld" "/de/essen-ohne-geld/a-4228347" &
getMP3_PDF "frauenhobby-fußball" "/de/frauenhobby-fußball/a-4186065" &
getMP3_PDF "freie-liebe-für-alle" "/de/freie-liebe-für-alle/a-4561170" &
getMP3_PDF "fremdenhass-im-web" "/de/fremdenhass-im-web/a-4525814" &
getMP3_PDF "friedrich-schiller-ein-rebell-mit-herz" "/de/friedrich-schiller-ein-rebell-mit-herz/a-4769123" &
getMP3_PDF "fröhliche-und-faire-weihnachten" "/de/fröhliche-und-faire-weihnachten/a-5042942" &
getMP3_PDF "fünf-minuten-nach-zwölf" "/de/fünf-minuten-nach-zwölf/a-4929944" &
getMP3_PDF "gedopte-gesellschaft" "/de/gedopte-gesellschaft/a-3932839" &
getMP3_PDF "graffiti-auf-dem-klo" "/de/graffiti-auf-dem-klo/a-4495457" &
getMP3_PDF "guerilla-mit-blumensamen" "/de/guerilla-mit-blumensamen/a-3901991" &
getMP3_PDF "hier-werden-autoren-gemacht" "/de/hier-werden-autoren-gemacht/a-4113895" &
getMP3_PDF "hilfe-für-analphabeten" "/de/hilfe-für-analphabeten/a-4685665" &
getMP3_PDF "hobbygärtner-und-dauercamper" "/de/hobbygärtner-und-dauercamper/a-4435033" &
getMP3_PDF "immer-mehr-zuckerkranke" "/de/immer-mehr-zuckerkranke/a-4784923" &
getMP3_PDF "ist-die-zeitung-am-ende" "/de/ist-die-zeitung-am-ende/a-4617522" &
getMP3_PDF "jagd-auf-illegale" "/de/jagd-auf-illegale/a-4044735" &
getMP3_PDF "kampf-gegen-moderne-sklaverei" "/de/kampf-gegen-moderne-sklaverei/a-4760348" &
getMP3_PDF "keine-chance-in-deutschland" "/de/keine-chance-in-deutschland/a-4313766" &
getMP3_PDF "keine-party-ohne-alkohol" "/de/keine-party-ohne-alkohol/a-5020076" &
getMP3_PDF "kinder-in-gefahr" "/de/kinder-in-gefahr/a-4105351" &
getMP3_PDF "kokain-per-mausklick" "/de/kokain-per-mausklick/a-4289234" &
getMP3_PDF "leben-trotz-aids" "/de/leben-trotz-aids/a-4957763" &
getMP3_PDF "lesen-mit-den-fingern" "/de/lesen-mit-den-fingern/a-3950636" &
getMP3_PDF "mehr-flüchtlinge-weniger-spenden" "/de/mehr-flüchtlinge-weniger-spenden/a-36112604" &
getMP3_PDF "mit-dem-islam-für-frauenrechte" "/de/mit-dem-islam-für-frauenrechte/a-4905858" &
getMP3_PDF "mit-geschichte-in-die-zukunft" "/de/mit-geschichte-in-die-zukunft/a-4142303" &
getMP3_PDF "mit-neuen-konzepten-zum-erfolg" "/de/mit-neuen-konzepten-zum-erfolg/a-4686039" &
getMP3_PDF "mut-zum-export" "/de/mut-zum-export/a-4564862" &
getMP3_PDF "müll-zum-mittagessen" "/de/müll-zum-mittagessen/a-5065380" &
getMP3_PDF "neuanfang-in-europa" "/de/neuanfang-in-europa/a-4563357" &
getMP3_PDF "neue-helden-braucht-das-land" "/de/neue-helden-braucht-das-land/a-4850669" &
getMP3_PDF "nie-mehr-graue-haare" "/de/nie-mehr-graue-haare/a-4083852" &
getMP3_PDF "nominativ-zweiter-weltkrieg-und-bmw" "/de/nominativ-zweiter-weltkrieg-und-bmw/a-4262365" &
getMP3_PDF "pilzköpfe-in-hamburg" "/de/pilzköpfe-in-hamburg/a-4461212" &
getMP3_PDF "politiker-als-popstars" "/de/politiker-als-popstars/a-4737935" &
getMP3_PDF "politische-piraten" "/de/politische-piraten/a-4678210" &
getMP3_PDF "pop-auf-deutsch" "/de/pop-auf-deutsch/a-4790506" &
getMP3_PDF "popmusik-mit-politischer-botschaft" "/de/popmusik-mit-politischer-botschaft/a-3970544" &
getMP3_PDF "praktikum-für-mehr-menschlichkeit" "/de/praktikum-für-mehr-menschlichkeit/a-4521635" &
getMP3_PDF "raben-für-die-queen" "/de/raben-für-die-queen/a-4264106" &
getMP3_PDF "raus-aus-der-anstalt" "/de/raus-aus-der-anstalt/a-4236594" &
getMP3_PDF "schlechte-noten-für-die-bildung" "/de/schlechte-noten-für-die-bildung/a-4407349" &
getMP3_PDF "schlechte-zeiten-für-musiker" "/de/schlechte-zeiten-für-musiker/a-4036505" &
getMP3_PDF "schule-für-den-frieden" "/de/schule-für-den-frieden/a-3956549" &
getMP3_PDF "schutz-vor-unerwünschter-übernahme" "/de/schutz-vor-unerwünschter-übernahme/a-36116012" &
getMP3_PDF "schönheit-mit-risiko" "/de/schönheit-mit-risiko/a-4526962" &
getMP3_PDF "so-wählen-die-deutschen-ihr-parlament" "/de/so-wählen-die-deutschen-ihr-parlament/a-4721441" &
getMP3_PDF "steuern-für-fortgeschrittene" "/de/steuern-für-fortgeschrittene/a-4809589" &
getMP3_PDF "tabuthema-depression" "/de/tabuthema-depression/a-4901181" &
getMP3_PDF "tante-emma-ist-wieder-da" "/de/tante-emma-ist-wieder-da/a-4950974" &
getMP3_PDF "testflug-zum-mars" "/de/testflug-zum-mars/a-4158978" &
getMP3_PDF "tsg-1899-hoffenheim-ein-fußballmärchen" "/de/tsg-1899-hoffenheim-ein-fußballmärchen/a-3989722" &
getMP3_PDF "unsere-kinder-werden-100-jahre-alt" "/de/unsere-kinder-werden-100-jahre-alt/a-4827408" &
getMP3_PDF "wenn-der-arzt-taxi-fährt" "/de/wenn-der-arzt-taxi-fährt/a-5013062" &
getMP3_PDF "wenn-die-arbeit-krank-macht" "/de/wenn-die-arbeit-krank-macht/a-4711704" &
getMP3_PDF "wenn-die-hippen-kommen" "/de/wenn-die-hippen-kommen/a-4922099" &
getMP3_PDF "wettlauf-gegen-die-wüste" "/de/wettlauf-gegen-die-wüste/a-4418639" &
getMP3_PDF "zensur-im-iran" "/de/zensur-im-iran/a-4329230" &
getMP3_PDF "zu-wenig-sport-für-dicke-kinder" "/de/zu-wenig-sport-für-dicke-kinder/a-4512471" &
getMP3_PDF "zurück-zur-kirche" "/de/zurück-zur-kirche/a-5048271" &
