getfiles()
{
	url=$1;
	folder=$2;
	echo "========================================================="
	echo url=$url, folder=$folder
	rm -vf $folder.html $folder.log
	# mkdir -p $folder;

	echo wget ${url} -o $folder.log -O $folder.html
	wget ${url} -o $folder.log -O $folder.html

	# get mp3 file
	echo mp3=`cat $folder.html | grep mp3 | grep '/overlay/media/de/'`
	mp3=`cat $folder.html | grep mp3 | grep '/overlay/media/de/'`
	case $mp3 in
		'')
			echo "get mp3 play page aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
			echo tmp=`cat $folder.html | grep '/overlay/media/de/'`
			tmp=`cat $folder.html | grep '/overlay/media/de/'`
			case $tmp in
				'')
					echo "ohne mp3 play page aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
					;;
				*)
					echo "get mp3 in play page aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
					echo play_page=`cat $folder.html | grep '/overlay/media/de/' | cut -d'"' -f2 | xargs -n1 echo www.dw.de | sed s/[[:space:]]//g`
					play_page=`cat $folder.html | grep '/overlay/media/de/' | cut -d'"' -f2 | xargs -n1 echo www.dw.de | sed s/[[:space:]]//g`
					echo wget $play_page -o $folder.page.log -O $folder.page.html
					wget $play_page -o $folder.page.log -O $folder.page.html
					echo mp4=`cat $folder.page.html | grep 'mp4' | grep 'tv-download.dw.com'`
					mp4=`cat $folder.page.html | grep 'mp4' | grep 'tv-download.dw.com'`
					case $mp4 in
						'')
							echo mp3_url=`cat $folder.page.html | grep 'radio-download.dw.com/' | grep 'input' | awk '{print $4}' | cut -d'"' -f2`
							mp3_url=`cat $folder.page.html | grep 'radio-download.dw.com/' | grep 'input' | awk '{print $4}' | cut -d'"' -f2`
							echo wget $mp3_url -o $folder.mp3.log -O $folder.mp3
							wget `cat $folder.page.html | grep 'radio-download.dw.com/' | grep 'input' | awk '{print $4}' | cut -d'"' -f2` -o $folder.mp3.log -O $folder.mp3
							;;
						*)
							echo wget `cat $folder.page.html | grep 'mp4' | grep 'tv-download.dw.com/' | grep 'input' | awk '{print $4}' | cut -d'"' -f2` -o $folder.mp4.log -O $folder.mp4
							wget `cat $folder.page.html | grep 'mp4' | grep 'tv-download.dw.com/' | grep 'input' | awk '{print $4}' | cut -d'"' -f2` -o $folder.mp4.log -O $folder.mp4
							;;
					esac
					;;
			esac
			;;
		*)
			echo www.dw.de$mp3 | sed s/[[:space:]]//g
			;;
	esac

	# get pdf file
	case `cat $folder.html | grep '/downloads/' | grep '.pdf'` in
		'')
			echo "ohne pdf file page aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
			;;
		*)
			echo wget `cat $folder.html | grep '/downloads/' | grep '.pdf' | cut -d'"' -f2 | xargs echo www.dw.de | sed s/[[:space:]]//g` -o $folder.pdf.log -O $folder.pdf
			wget `cat $folder.html | grep '/downloads/' | grep '.pdf' | cut -d'"' -f2 | xargs echo www.dw.de | sed s/[[:space:]]//g` -o $folder.pdf.log -O $folder.pdf
			;;
	esac
}

getfiles "www.dw.de/de/obergrenze-warum-streiten-cdu-und-csu/a-36210161" "obergrenze-warum-streiten-cdu-und-csu" &
getfiles "www.dw.de/de/menschenrechtler-prangern-folter-in-der-türkei-an/a-36143105" "menschenrechtler-prangern-folter-in-der-türkei-an" &
getfiles "www.dw.de/de/teheran-lockt-investoren/a-36178830" "teheran-lockt-investoren" &
getfiles "www.dw.de/de/sankt-martin-hoch-zu-ross/l-19249311" "sankt-martin-hoch-zu-ross" &
getfiles "www.dw.de/de/traumberuf-schauspieler/a-14883282" "traumberuf-schauspieler" &
getfiles "www.dw.de/de/scheidung/a-1695198" "scheidung" &
getfiles "www.dw.de/de/schiedsrichterschulung/a-17553404" "schiedsrichterschulung" &
getfiles "www.dw.de/de/schiffsnavigation/a-16389431" "schiffsnavigation" &
getfiles "www.dw.de/de/schillers-worte/a-17186928" "schillers-worte" &
getfiles "www.dw.de/de/hauptsache-schlank/a-480637" "hauptsache-schlank" &
getfiles "www.dw.de/de/in-der-schmiede/a-14971001" "in-der-schmiede" &
getfiles "www.dw.de/de/auf-schnäppchenjagd/l-18994332" "auf-schnäppchenjagd" &
getfiles "www.dw.de/de/schnapsbrennen-auf-der-alm/a-15234245" "schnapsbrennen-auf-der-alm" &
getfiles "www.dw.de/de/schneidern-am-computer/a-18204364" "schneidern-am-computer" &
getfiles "www.dw.de/de/schönheitsoperationen-bei-jugendlichen/a-18427803" "schönheitsoperationen-bei-jugendlichen" &
getfiles "www.dw.de/de/im-schrebergarten/a-15117668" "im-schrebergarten" &
getfiles "www.dw.de/de/vom-schreiben-und-bewahren/a-438009" "vom-schreiben-und-bewahren" &
getfiles "www.dw.de/de/der-schreiner-aus-bayern/a-15684418" "der-schreiner-aus-bayern" &
getfiles "www.dw.de/de/schwarmfinanzierung-für-jungunternehmer/a-17888269" "schwarmfinanzierung-für-jungunternehmer" &
getfiles "www.dw.de/de/schuhe/a-1276959" "schuhe" &
getfiles "www.dw.de/de/schulbeginn/a-15209239" "schulbeginn" &
getfiles "www.dw.de/de/aus-der-schule-geplaudert/a-5143271" "aus-der-schule-geplaudert" &
getfiles "www.dw.de/de/schüler-helfen-menschen-in-not/a-17772578" "schüler-helfen-menschen-in-not" &
getfiles "www.dw.de/de/der-schülerkiosk/a-17283996" "der-schülerkiosk" &
getfiles "www.dw.de/de/schülerintegration/a-16576670" "schülerintegration" &
getfiles "www.dw.de/de/das-schwein/a-741572" "das-schwein" &
getfiles "www.dw.de/de/die-seelenklempner/a-17528718" "die-seelenklempner" &
getfiles "www.dw.de/de/seemannsgarn/a-5415615" "seemannsgarn" &
getfiles "www.dw.de/de/der-segelmacher/a-14857985" "der-segelmacher" &
getfiles "www.dw.de/de/selbst-ist-der-mann/a-5178336" "selbst-ist-der-mann" &
getfiles "www.dw.de/de/ein-älteres-semester/a-5746040" "ein-älteres-semester" &
getfiles "www.dw.de/de/unterwegs-in-der-senfmühle/l-19298408" "unterwegs-in-der-senfmühle" &
getfiles "www.dw.de/de/seniorexperte-im-einsatz/a-18051259" "seniorexperte-im-einsatz" &
getfiles "www.dw.de/de/seniorenzeitschriften/a-961727" "seniorenzeitschriften" &
getfiles "www.dw.de/de/skat-reizen-decken-stechen/a-5508377" "skat-reizen-decken-stechen" &
getfiles "www.dw.de/de/solarlampen-aus-bayern/a-17167853" "solarlampen-aus-bayern" &
getfiles "www.dw.de/de/sommer/a-1249658" "sommer" &
getfiles "www.dw.de/de/sonne-mond-und-sterne/a-276104" "sonne-mond-und-sterne" &
getfiles "www.dw.de/de/der-sonntag-im-wandel-der-zeit/l-19016155" "der-sonntag-im-wandel-der-zeit" &
getfiles "www.dw.de/de/sozialisation-durch-sport/a-17426628" "sozialisation-durch-sport" &
getfiles "www.dw.de/de/wg-speed-dating/a-16383080" "wg-speed-dating" &
getfiles "www.dw.de/de/spieglein-spieglein-an-der-wand/a-563757" "spieglein-spieglein-an-der-wand" &
getfiles "www.dw.de/de/spitze-ein-kostbares-produkt/l-19020735" "spitze-ein-kostbares-produkt" &
getfiles "www.dw.de/de/sportler-im-abseits/l-19262668" "sportler-im-abseits" &
getfiles "www.dw.de/de/sportwagen-in-handarbeit/a-16043330" "sportwagen-in-handarbeit" &
getfiles "www.dw.de/de/sprachförderung-an-der-grundschule/a-17984609" "sprachförderung-an-der-grundschule" &
getfiles "www.dw.de/de/sprachliche-irrtümer/a-5319051" "sprachliche-irrtümer" &
getfiles "www.dw.de/de/sprachreisen-zuhause/a-15792774" "sprachreisen-zuhause" &
getfiles "www.dw.de/de/sprachtherapie/a-822852" "sprachtherapie" &
getfiles "www.dw.de/de/sprach-und-integrationsmittler/l-19249235" "sprach-und-integrationsmittler" &
getfiles "www.dw.de/de/sprachvereine/a-1019996" "sprachvereine" &
getfiles "www.dw.de/de/spreewälder-spezialitäten/a-15074562" "spreewälder-spezialitäten" &
getfiles "www.dw.de/de/sprichwörtliche-lebensweisheiten/a-5236260" "sprichwörtliche-lebensweisheiten" &
getfiles "www.dw.de/de/stadtführer/a-480618" "stadtführer" &
getfiles "www.dw.de/de/ein-puzzle-aus-stasiakten/a-17955078" "ein-puzzle-aus-stasiakten" &
getfiles "www.dw.de/de/im-stau/a-15116835" "im-stau" &
getfiles "www.dw.de/de/der-steinkohlebergbau-in-deutschland/l-19005240" "der-steinkohlebergbau-in-deutschland" &
getfiles "www.dw.de/de/sternegucken-im-naturpark/l-18808787" "sternegucken-im-naturpark" &
getfiles "www.dw.de/de/beim-steuerberater/a-15166364" "beim-steuerberater" &
getfiles "www.dw.de/de/stiftung-warentest/a-686686" "stiftung-warentest" &
getfiles "www.dw.de/de/stolpersteine/a-1481411" "stolpersteine" &
getfiles "www.dw.de/de/wir-sind-anders-das-stottern/a-17733561" "wir-sind-anders-das-stottern" &
getfiles "www.dw.de/de/die-strottern/a-16527808" "die-strottern" &
getfiles "www.dw.de/de/studenten-im-rollstuhl/a-276062" "studenten-im-rollstuhl" &
getfiles "www.dw.de/de/studiengang-alphabetisierung/a-18176674" "studiengang-alphabetisierung" &
getfiles "www.dw.de/de/ein-ausgezeichneter-studiengang/a-17534964" "ein-ausgezeichneter-studiengang" &
getfiles "www.dw.de/de/studienjahr-im-ausland/a-17485135" "studienjahr-im-ausland" &
getfiles "www.dw.de/de/deutsch-lernen-mit-harry/a-19042758" "deutsch-lernen-mit-harry" &
getfiles "www.dw.de/de/association-for-language-learning-all/a-19144330" "association-for-language-learning-all" &
getfiles "www.dw.de/de/28122015-langsam-gesprochene-nachrichten/a-18944804" "28122015-langsam-gesprochene-nachrichten" &
getfiles "www.dw.de/de/datenschutzerklärung/a-18265186" "datenschutzerklärung" &
