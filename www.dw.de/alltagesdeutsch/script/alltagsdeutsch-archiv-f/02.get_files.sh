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
getfiles "www.dw.de/de/die-welt-des-fahrrads/a-5377856" "die-welt-des-fahrrads" &
getfiles "www.dw.de/de/fahrradschnellwege/a-17704628" "fahrradschnellwege" &
getfiles "www.dw.de/de/fair-produzierte-kleidung-in-deutschland/a-18241044" "fair-produzierte-kleidung-in-deutschland" &
getfiles "www.dw.de/de/wer-übernimmt-den-familienbetrieb/l-18902578" "wer-übernimmt-den-familienbetrieb" &
getfiles "www.dw.de/de/farbige-sprache/a-5610116" "farbige-sprache" &
getfiles "www.dw.de/de/eine-besondere-fastenaktion/a-18215667" "eine-besondere-fastenaktion" &
getfiles "www.dw.de/de/fehlerteufel/a-441777" "fehlerteufel" &
getfiles "www.dw.de/de/feierabend/a-509505" "feierabend" &
getfiles "www.dw.de/de/wie-ein-fels-in-der-brandung/a-422487" "wie-ein-fels-in-der-brandung" &
getfiles "www.dw.de/de/ferien-auf-dem-schulhof/a-15939680" "ferien-auf-dem-schulhof" &
getfiles "www.dw.de/de/das-fernsehverhalten-der-deutschen/a-5626971" "das-fernsehverhalten-der-deutschen" &
getfiles "www.dw.de/de/feuer-und-licht/a-504550" "feuer-und-licht" &
getfiles "www.dw.de/de/filmen-in-der-schule/l-19248796" "filmen-in-der-schule" &
getfiles "www.dw.de/de/im-filmmuseum/a-16545435" "im-filmmuseum" &
getfiles "www.dw.de/de/auf-dem-fischmarkt-in-hamburg/a-5485819" "auf-dem-fischmarkt-in-hamburg" &
getfiles "www.dw.de/de/fisimatenten-ein-besuch-im-zelt/a-5198554" "fisimatenten-ein-besuch-im-zelt" &
getfiles "www.dw.de/de/flirten/a-295003" "flirten" &
getfiles "www.dw.de/de/flohmärkte/a-5311295" "flohmärkte" &
getfiles "www.dw.de/de/auf-der-flucht/l-18629494" "auf-der-flucht" &
getfiles "www.dw.de/de/flüchtlinge-die-arbeitskräfte-für-morgen/l-19295979" "flüchtlinge-die-arbeitskräfte-für-morgen" &
getfiles "www.dw.de/de/in-der-flüchtlingsberatung/a-17806920" "in-der-flüchtlingsberatung" &
getfiles "www.dw.de/de/beruf-fotograf/l-19245209" "beruf-fotograf" &
getfiles "www.dw.de/de/forscher-aus-dem-ausland/a-16889258" "forscher-aus-dem-ausland" &
getfiles "www.dw.de/de/wörter-französischen-ursprungs/a-1116125" "wörter-französischen-ursprungs" &
getfiles "www.dw.de/de/frankfurter-kiosk/a-480665" "frankfurter-kiosk" &
getfiles "www.dw.de/de/frauenfußball-in-deutschland/a-16860749" "frauenfußball-in-deutschland" &
getfiles "www.dw.de/de/frauenkloster-ora-et-labora/a-1326423" "frauenkloster-ora-et-labora" &
getfiles "www.dw.de/de/friedhof/a-986958" "friedhof" &
getfiles "www.dw.de/de/traumberuf-friseurin/a-17898486" "traumberuf-friseurin" &
getfiles "www.dw.de/de/frühling/a-851699" "frühling" &
getfiles "www.dw.de/de/fundbüro/a-799399" "fundbüro" &
getfiles "www.dw.de/de/fußball-ist-unser-leben/a-5377724" "fußball-ist-unser-leben" &
getfiles "www.dw.de/de/erfolgsgeschichte-fußball-bundesliga/l-19186146" "erfolgsgeschichte-fußball-bundesliga" &
getfiles "www.dw.de/de/fußballfans-im-sammelfieber/a-17615127" "fußballfans-im-sammelfieber" &
getfiles "www.dw.de/de/fußballsprache/a-812211" "fußballsprache" &
getfiles "www.dw.de/de/total-fußballverrückt/a-15082969" "total-fußballverrückt" &
getfiles "www.dw.de/de/deutsch-lernen-mit-harry/a-19042758" "deutsch-lernen-mit-harry" &
getfiles "www.dw.de/de/association-for-language-learning-all/a-19144330" "association-for-language-learning-all" &
getfiles "www.dw.de/de/28122015-langsam-gesprochene-nachrichten/a-18944804" "28122015-langsam-gesprochene-nachrichten" &
getfiles "www.dw.de/de/datenschutzerklärung/a-18265186" "datenschutzerklärung" &
