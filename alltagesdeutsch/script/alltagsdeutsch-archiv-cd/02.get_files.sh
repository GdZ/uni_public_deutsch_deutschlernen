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
getfiles "www.dw.de/de/die-welt-zu-gast-im-café/a-5155301" "die-welt-zu-gast-im-café" &
getfiles "www.dw.de/de/wer-den-cent-nicht-ehrt/a-14874257" "wer-den-cent-nicht-ehrt" &
getfiles "www.dw.de/de/die-dunkle-geschichte-der-berliner-charité/l-18701574" "die-dunkle-geschichte-der-berliner-charité" &
getfiles "www.dw.de/de/clown-und-humortherapie/a-706157" "clown-und-humortherapie" &
getfiles "www.dw.de/de/comicsprache/a-297830" "comicsprache" &
getfiles "www.dw.de/de/die-cowboys-der-straße/a-5488022" "die-cowboys-der-straße" &
getfiles "www.dw.de/de/currywurst/a-933314" "currywurst" &
getfiles "www.dw.de/de/dampfmaschinen/a-670037" "dampfmaschinen" &
getfiles "www.dw.de/de/mehr-gewicht-für-deutsch/a-18264053" "mehr-gewicht-für-deutsch" &
getfiles "www.dw.de/de/der-deutsche-und-sein-haustier/a-5514606" "der-deutsche-und-sein-haustier" &
getfiles "www.dw.de/de/die-deutschen-der-sex-und-die-scham/a-18551543" "die-deutschen-der-sex-und-die-scham" &
getfiles "www.dw.de/de/alemannisch/a-1383904" "alemannisch" &
getfiles "www.dw.de/de/bairisch/a-1261471" "bairisch" &
getfiles "www.dw.de/de/berlinerisch/a-1606951" "berlinerisch" &
getfiles "www.dw.de/de/fränkisch/a-1572705" "fränkisch" &
getfiles "www.dw.de/de/hamburgisch/a-1186522" "hamburgisch" &
getfiles "www.dw.de/de/hessisch/a-1222382" "hessisch" &
getfiles "www.dw.de/de/kölsch/a-1701813" "kölsch" &
getfiles "www.dw.de/de/niederrheinisch/a-3034629" "niederrheinisch" &
getfiles "www.dw.de/de/pfälzisch/a-1420956" "pfälzisch" &
getfiles "www.dw.de/de/plattdeutsch-in-mecklenburg-vorpommern/a-2814408" "plattdeutsch-in-mecklenburg-vorpommern" &
getfiles "www.dw.de/de/ruhrpott/a-1427341" "ruhrpott" &
getfiles "www.dw.de/de/saarländisch/a-1475095" "saarländisch" &
getfiles "www.dw.de/de/sächsisch/a-1256732" "sächsisch" &
getfiles "www.dw.de/de/saterfriesisch/a-1126720" "saterfriesisch" &
getfiles "www.dw.de/de/schwäbisch/a-1283584" "schwäbisch" &
getfiles "www.dw.de/de/thüringisch/a-1542532" "thüringisch" &
getfiles "www.dw.de/de/westfälisch/a-1503832" "westfälisch" &
getfiles "www.dw.de/de/doping-fürs-gehirn/a-18436677" "doping-fürs-gehirn" &
getfiles "www.dw.de/de/von-dozenten-und-studenten/a-15257227" "von-dozenten-und-studenten" &
getfiles "www.dw.de/de/die-druckbranche-im-wandel/l-19182989" "die-druckbranche-im-wandel" &
getfiles "www.dw.de/de/nie-wieder-dschihadist/l-18831998" "nie-wieder-dschihadist" &
getfiles "www.dw.de/de/datenschutzerklärung/a-18265186" "datenschutzerklärung" &
