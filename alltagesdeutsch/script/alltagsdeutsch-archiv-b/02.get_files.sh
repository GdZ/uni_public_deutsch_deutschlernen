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

# test
getfiles "www.dw.de/de/brot-brötchen-und-vespern/a-925875" "brot-brötchen-und-vespern"
# release
# getfiles "www.dw.de/de/obergrenze-warum-streiten-cdu-und-csu/a-36210161" "obergrenze-warum-streiten-cdu-und-csu" &
# getfiles "www.dw.de/de/menschenrechtler-prangern-folter-in-der-türkei-an/a-36143105" "menschenrechtler-prangern-folter-in-der-türkei-an" &
# getfiles "www.dw.de/de/teheran-lockt-investoren/a-36178830" "teheran-lockt-investoren" &
# getfiles "www.dw.de/de/das-bachhaus/a-17426279" "das-bachhaus" &
# getfiles "www.dw.de/de/von-bananen-mangos-und-anderen-früchten/a-5096615" "von-bananen-mangos-und-anderen-früchten" &
# getfiles "www.dw.de/de/bananen-und-ihr-weg-nach-deutschland/l-19122554" "bananen-und-ihr-weg-nach-deutschland" &
# getfiles "www.dw.de/de/in-der-banklehre/l-19133506" "in-der-banklehre" &
# getfiles "www.dw.de/de/barbier-und-bader-ein-friseur-erzählt/a-5378361" "barbier-und-bader-ein-friseur-erzählt" &
# getfiles "www.dw.de/de/bart-tragen-ist-in/l-19164719" "bart-tragen-ist-in" &
# getfiles "www.dw.de/de/bauernregeln/a-4744984" "bauernregeln" &
# getfiles "www.dw.de/de/der-baum/a-1518858" "der-baum" &
# getfiles "www.dw.de/de/bayrische-lebensart/a-276238" "bayrische-lebensart" &
# getfiles "www.dw.de/de/beethoven-heute-noch-modern/l-18629315" "beethoven-heute-noch-modern" &
# getfiles "www.dw.de/de/behütetes-handwerk/a-16727254" "behütetes-handwerk" &
# getfiles "www.dw.de/de/wie-benehme-ich-mich-richtig-daneben/a-5173787" "wie-benehme-ich-mich-richtig-daneben" &
# getfiles "www.dw.de/de/berufswunsch-politiker/a-17528005" "berufswunsch-politiker" &
# getfiles "www.dw.de/de/berufsziel-fußballmanager/a-15909317" "berufsziel-fußballmanager" &
# getfiles "www.dw.de/de/biblische-grußformeln-und-flüche/a-5968746" "biblische-grußformeln-und-flüche" &
# getfiles "www.dw.de/de/bier-aus-bayern/a-17817283" "bier-aus-bayern" &
# getfiles "www.dw.de/de/bilinguale-grundschulen/a-15555166" "bilinguale-grundschulen" &
# getfiles "www.dw.de/de/binnenschiffer/a-480575" "binnenschiffer" &
# getfiles "www.dw.de/de/das-blau/a-17407177" "das-blau" &
# getfiles "www.dw.de/de/das-blaue-wunder/a-5532844" "das-blaue-wunder" &
# getfiles "www.dw.de/de/der-blonde-deutsche-barde/a-6004455" "der-blonde-deutsche-barde" &
# getfiles "www.dw.de/de/durch-die-blume/a-1046502" "durch-die-blume" &
# getfiles "www.dw.de/de/das-böse-im-menschen/a-18251008" "das-böse-im-menschen" &
# getfiles "www.dw.de/de/boxen/a-1413670" "boxen" &
# getfiles "www.dw.de/de/brot-brötchen-und-vespern/a-925875" "brot-brötchen-und-vespern" &
# getfiles "www.dw.de/de/das-gute-deutsche-brot/a-17165431" "das-gute-deutsche-brot" &
# getfiles "www.dw.de/de/brotlose-künste/a-1427810" "brotlose-künste" &
# getfiles "www.dw.de/de/der-bücherwurm/a-1556041" "der-bücherwurm" &
# getfiles "www.dw.de/de/bühnensprache/a-5658681" "bühnensprache" &
# getfiles "www.dw.de/de/bunte-sprache/a-1723267" "bunte-sprache" &
# getfiles "www.dw.de/de/deutsch-lernen-mit-harry/a-19042758" "deutsch-lernen-mit-harry" &
# getfiles "www.dw.de/de/association-for-language-learning-all/a-19144330" "association-for-language-learning-all" &
# getfiles "www.dw.de/de/28122015-langsam-gesprochene-nachrichten/a-18944804" "28122015-langsam-gesprochene-nachrichten" &
# getfiles "www.dw.de/de/datenschutzerklärung/a-18265186" "datenschutzerklärung" &
