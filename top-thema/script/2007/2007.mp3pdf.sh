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

getMP3_PDF "1001-nacht-in-den-riads-von-marrakesch" "/de/1001-nacht-in-den-riads-von-marrakesch/a-2416750" &
getMP3_PDF "20-jahre-erasmus-austauschprogramm" "/de/20-jahre-erasmus-austauschprogramm/a-2516447" &
getMP3_PDF "advent-advent-ein-lichtlein-brennt" "/de/advent-advent-ein-lichtlein-brennt/a-2998750" &
getMP3_PDF "arbeiten-in-der-fremde-für-das-wohl-der-daheimgebliebenen" "/de/arbeiten-in-der-fremde-für-das-wohl-der-daheimgebliebenen/a-2438037" &
getMP3_PDF "arbeitszeitmodell-allzeit-bereit" "/de/arbeitszeitmodell-allzeit-bereit/a-2318434" &
getMP3_PDF "auswanderer-im-fernsehen" "/de/auswanderer-im-fernsehen/a-2779497" &
getMP3_PDF "benimm-regeln-für-touristen-in-venedig" "/de/benimm-regeln-für-touristen-in-venedig/a-2668343" &
getMP3_PDF "bionade-die-coca-cola-des-21-jahrhunderts" "/de/bionade-die-coca-cola-des-21-jahrhunderts/a-2746311" &
getMP3_PDF "china-entdeckt-das-produktdesign" "/de/china-entdeckt-das-produktdesign/a-2755318" &
getMP3_PDF "coke-versus-pepsi-der-neue-brausekrieg" "/de/coke-versus-pepsi-der-neue-brausekrieg/a-2610508" &
getMP3_PDF "das-internet-lernt-jiddisch" "/de/das-internet-lernt-jiddisch/a-2836470" &
getMP3_PDF "das-literarische-leben-der-siebenbürger-sachsen" "/de/das-literarische-leben-der-siebenbürger-sachsen/a-2615478" &
getMP3_PDF "das-schmerz-gen" "/de/das-schmerz-gen/a-2446896" &
getMP3_PDF "das-zweite-leben-der-ddr-jugendorganisation-fdj" "/de/das-zweite-leben-der-ddr-jugendorganisation-fdj/a-2300565" &
getMP3_PDF "der-aufstieg-der-engel-aus-dresden" "/de/der-aufstieg-der-engel-aus-dresden/a-3016422" &
getMP3_PDF "der-kampf-ums-festland" "/de/der-kampf-ums-festland/a-2361978" &
getMP3_PDF "der-kleine-unterschied" "/de/der-kleine-unterschied/a-2934199" &
getMP3_PDF "der-mönch-am-meer-eine-ikone-der-deutschen-romantik" "/de/der-mönch-am-meer-eine-ikone-der-deutschen-romantik/a-2338982" &
getMP3_PDF "der-staat-als-pc-hacker" "/de/der-staat-als-pc-hacker/a-2764912" &
getMP3_PDF "der-traum-von-europa" "/de/der-traum-von-europa/a-2968659" &
getMP3_PDF "der-vatikan-und-der-verkehr" "/de/der-vatikan-und-der-verkehr/a-2635100" &
getMP3_PDF "dichter-ziehen-um-in-clubs-und-kneipen" "/de/dichter-ziehen-um-in-clubs-und-kneipen/a-2308196" &
getMP3_PDF "die-duft-dynastie-von-köln" "/de/die-duft-dynastie-von-köln/a-2699191" &
getMP3_PDF "die-geschichte-der-schokolade" "/de/die-geschichte-der-schokolade/a-3027268" &
getMP3_PDF "die-geschichte-einer-entstellung" "/de/die-geschichte-einer-entstellung/a-2553491" &
getMP3_PDF "die-gestohlene-kindheit-in-bildern-verarbeiten" "/de/die-gestohlene-kindheit-in-bildern-verarbeiten/a-2378574" &
getMP3_PDF "die-macht-des-klangs" "/de/die-macht-des-klangs/a-2311810" &
getMP3_PDF "die-neue-lust-am-wandern" "/de/die-neue-lust-am-wandern/a-2375297" &
getMP3_PDF "die-stadt-der-weißen-models" "/de/die-stadt-der-weißen-models/a-2805760" &
getMP3_PDF "drama-im-all" "/de/drama-im-all/a-3016608" &
getMP3_PDF "duell-ums-ehrenamt-wer-folgt-michelle-obama" "/de/duell-ums-ehrenamt-wer-folgt-michelle-obama/a-36077267" &
getMP3_PDF "eine-rose-verblüht-ein-buch-bleibt" "/de/eine-rose-verblüht-ein-buch-bleibt/a-2451828" &
getMP3_PDF "entwicklungshilfe-ein-süßes-gift" "/de/entwicklungshilfe-ein-süßes-gift/a-2581051" &
getMP3_PDF "es-ist-die-nachtigall" "/de/es-ist-die-nachtigall/a-2420097" &
getMP3_PDF "essen-wie-in-der-heimat" "/de/essen-wie-in-der-heimat/a-2871967" &
getMP3_PDF "exportschlager-brettspiele" "/de/exportschlager-brettspiele/a-2847816" &
getMP3_PDF "exportschlager-japanische-jugendkultur" "/de/exportschlager-japanische-jugendkultur/a-2728146" &
getMP3_PDF "gefahren-durch-tierische-einwanderer" "/de/gefahren-durch-tierische-einwanderer/a-3011335" &
getMP3_PDF "geplante-londoner-mega-moschee-sorgt-für-streit" "/de/geplante-londoner-mega-moschee-sorgt-für-streit/a-2827125" &
getMP3_PDF "grab-des-herodes-gefunden" "/de/grab-des-herodes-gefunden/a-2510542" &
getMP3_PDF "hoch-im-kurs-aber-noch-kein-öko-traum-biokraftstoffe" "/de/hoch-im-kurs-aber-noch-kein-öko-traum-biokraftstoffe/a-2331417" &
getMP3_PDF "hochbegabung-als-fluch" "/de/hochbegabung-als-fluch/a-2773421" &
getMP3_PDF "hochschule-will-die-besten" "/de/hochschule-will-die-besten/a-2386791" &
getMP3_PDF "hoffnung-für-kindersoldaten" "/de/hoffnung-für-kindersoldaten/a-2342667" &
getMP3_PDF "hollywood-streikt-ich-kann-nicht-lustig-sein" "/de/hollywood-streikt-ich-kann-nicht-lustig-sein/a-2901737" &
getMP3_PDF "hope-für-die-südafrikanischen-aids-patienten" "/de/hope-für-die-südafrikanischen-aids-patienten/a-2430520" &
getMP3_PDF "ich-sehe-was-was-du-nicht-siehst" "/de/ich-sehe-was-was-du-nicht-siehst/a-2466692" &
getMP3_PDF "im-lager-der-g8-gegner-herrscht-ruhe-vor-dem-sturm" "/de/im-lager-der-g8-gegner-herrscht-ruhe-vor-dem-sturm/a-2577253" &
getMP3_PDF "im-rollstuhl-auf-hoher-see" "/de/im-rollstuhl-auf-hoher-see/a-2760070" &
getMP3_PDF "immer-wieder-afrika" "/de/immer-wieder-afrika/a-2572147" &
getMP3_PDF "in-bonn-ist-beethoven-überall" "/de/in-bonn-ist-beethoven-überall/a-2542303" &
getMP3_PDF "in-den-fußstapfen-der-oranier" "/de/in-den-fußstapfen-der-oranier/a-2694844" &
getMP3_PDF "integration-gegen-homophobie" "/de/integration-gegen-homophobie/a-2801405" &
getMP3_PDF "kampf-gegen-aids-rückt-wieder-in-den-fokus" "/de/kampf-gegen-aids-rückt-wieder-in-den-fokus/a-2381701" &
getMP3_PDF "kampf-gegen-menschenhandel" "/de/kampf-gegen-menschenhandel/a-2831251" &
getMP3_PDF "keine-koranschule-das-islamische-gymnasium-in-wien" "/de/keine-koranschule-das-islamische-gymnasium-in-wien/a-2993178" &
getMP3_PDF "klimawandel-trifft-die-ärmsten-wie-die-eu-helfen-will" "/de/klimawandel-trifft-die-ärmsten-wie-die-eu-helfen-will/a-2791295" &
getMP3_PDF "kokainkonsum-in-europa-drastisch-gestiegen" "/de/kokainkonsum-in-europa-drastisch-gestiegen/a-2973927" &
getMP3_PDF "kunst-und-kommerz-auf-der-insel-des-glücks" "/de/kunst-und-kommerz-auf-der-insel-des-glücks/a-2326419" &
getMP3_PDF "langer-weg-zum-friedlichen-miteinander-in-bosnien-herzegowina" "/de/langer-weg-zum-friedlichen-miteinander-in-bosnien-herzegowina/a-2676662" &
getMP3_PDF "le-parkour-die-welt-als-spielplatz" "/de/le-parkour-die-welt-als-spielplatz/a-2732455" &
getMP3_PDF "liebe-auf-den-zweiten-blick" "/de/liebe-auf-den-zweiten-blick/a-2606272" &
getMP3_PDF "liebe-im-internet" "/de/liebe-im-internet/a-2672014" &
getMP3_PDF "lucys-kinder" "/de/lucys-kinder/a-2750266" &
getMP3_PDF "malaria-der-vermeidbare-tod" "/de/malaria-der-vermeidbare-tod/a-2459381" &
getMP3_PDF "marokkanische-jugendliche-zwischen-abenteuer-und-tod" "/de/marokkanische-jugendliche-zwischen-abenteuer-und-tod/a-2778018" &
getMP3_PDF "mehr-aidsinfektionen-in-europa" "/de/mehr-aidsinfektionen-in-europa/a-2986121" &
getMP3_PDF "mehr-flüchtlinge-weniger-spenden" "/de/mehr-flüchtlinge-weniger-spenden/a-36112604" &
getMP3_PDF "meinungsmache-im-us-radio" "/de/meinungsmache-im-us-radio/a-18714811" &
getMP3_PDF "meister-im-export-das-deutsche-handwerk" "/de/meister-im-export-das-deutsche-handwerk/a-2979396" &
getMP3_PDF "migranten-fördern-innovation" "/de/migranten-fördern-innovation/a-2713240" &
getMP3_PDF "mission-europe-sprachen-lernen-als-spannender-krimi" "/de/mission-europe-sprachen-lernen-als-spannender-krimi/a-2371194" &
getMP3_PDF "mit-kopftuch-auf-jobsuche" "/de/mit-kopftuch-auf-jobsuche/a-2719522" &
getMP3_PDF "moderne-gotteshäuser-moscheen-in-den-usa" "/de/moderne-gotteshäuser-moscheen-in-den-usa/a-2304515" &
getMP3_PDF "moderne-sklaverei-in-china" "/de/moderne-sklaverei-in-china/a-2619020" &
getMP3_PDF "molodist-filmfestival-auf-ukrainisch" "/de/molodist-filmfestival-auf-ukrainisch/a-2855009" &
getMP3_PDF "mumie-der-hatschepsut-identifiziert" "/de/mumie-der-hatschepsut-identifiziert/a-2651061" &
getMP3_PDF "neue-nachbarn-an-der-oder" "/de/neue-nachbarn-an-der-oder/a-2738466" &
getMP3_PDF "nur-werbung-in-der-e-post" "/de/nur-werbung-in-der-e-post/a-2296996" &
getMP3_PDF "offene-türen-für-müde-seelen" "/de/offene-türen-für-müde-seelen/a-2462743" &
getMP3_PDF "oxford-hier-studiert-die-elite" "/de/oxford-hier-studiert-die-elite/a-2347044" &
getMP3_PDF "pressefreiheit-in-der-türkei-noch-immer-ein-kampf" "/de/pressefreiheit-in-der-türkei-noch-immer-ein-kampf/a-2481553" &
getMP3_PDF "proteste-gegen-militärregime-in-birma" "/de/proteste-gegen-militärregime-in-birma/a-2796644" &
getMP3_PDF "rainbow-und-lancelot-namenwahl-auf-chinesisch" "/de/rainbow-und-lancelot-namenwahl-auf-chinesisch/a-2809747" &
getMP3_PDF "raumfahrt-für-millionen" "/de/raumfahrt-für-millionen/a-2814296" &
getMP3_PDF "raus-mit-den-gefühlen" "/de/raus-mit-den-gefühlen/a-2929182" &
getMP3_PDF "romanes-die-unbekannte-sprache" "/de/romanes-die-unbekannte-sprache/a-2882739" &
getMP3_PDF "schulbücher-zur-versöhnung" "/de/schulbücher-zur-versöhnung/a-2366656" &
getMP3_PDF "schutz-vor-unerwünschter-übernahme" "/de/schutz-vor-unerwünschter-übernahme/a-36116012" &
getMP3_PDF "sie-haben-es-verdient-todesstrafe-in-den-usa" "/de/sie-haben-es-verdient-todesstrafe-in-den-usa/a-2822684" &
getMP3_PDF "spanische-organisation-karibu-hilft-flüchtlingen-aus-afrika" "/de/spanische-organisation-karibu-hilft-flüchtlingen-aus-afrika/a-2352895" &
getMP3_PDF "strampeln-und-treten-auf-schienen" "/de/strampeln-und-treten-auf-schienen/a-2560967" &
getMP3_PDF "streit-um-un-erklärung-zu-urvölkern" "/de/streit-um-un-erklärung-zu-urvölkern/a-2787035" &
getMP3_PDF "südafrikas-last-mit-der-vergangenheit" "/de/südafrikas-last-mit-der-vergangenheit/a-2441440" &
getMP3_PDF "thunfisch-bestände-dramatisch-gesunken" "/de/thunfisch-bestände-dramatisch-gesunken/a-2323730" &
getMP3_PDF "traumberuf-diplomat" "/de/traumberuf-diplomat/a-2681467" &
getMP3_PDF "tysklærerforeningen-for-gymnasiet-og-hf" "/de/tysklærerforeningen-for-gymnasiet-og-hf/a-18825665" &
getMP3_PDF "umweltkatastrophe-in-china-der-preis-des-wachstums" "/de/umweltkatastrophe-in-china-der-preis-des-wachstums/a-2861070" &
getMP3_PDF "vielfalt-als-stärke" "/de/vielfalt-als-stärke/a-2557463" &
getMP3_PDF "warten-auf-den-tod-durch-die-steine" "/de/warten-auf-den-tod-durch-die-steine/a-2704604" &
getMP3_PDF "warum-normen-die-wirtschaft-retten" "/de/warum-normen-die-wirtschaft-retten/a-2425798" &
getMP3_PDF "wem-gehört-die-arktis" "/de/wem-gehört-die-arktis/a-2742150" &
getMP3_PDF "wenn-der-op-tisch-zusammenbricht" "/de/wenn-der-op-tisch-zusammenbricht/a-2708951" &
getMP3_PDF "wenn-die-gletscher-schmelzen" "/de/wenn-die-gletscher-schmelzen/a-3005092" &
getMP3_PDF "wie-kambodscha-gegen-pädophile-sextouristen-vorgeht" "/de/wie-kambodscha-gegen-pädophile-sextouristen-vorgeht/a-2397365" &
getMP3_PDF "wilhelm-busch-vater-des-comics-und-des-schwarzen-humors" "/de/wilhelm-busch-vater-des-comics-und-des-schwarzen-humors/a-2444083" &
getMP3_PDF "wirtschaftsfaktor-karneval" "/de/wirtschaftsfaktor-karneval/a-2356631" &
getMP3_PDF "zurück-in-die-heimat" "/de/zurück-in-die-heimat/a-2334914" &
