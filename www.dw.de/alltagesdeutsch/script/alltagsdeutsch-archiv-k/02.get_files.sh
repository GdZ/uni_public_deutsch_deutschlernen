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
getfiles "www.dw.de/de/das-kadewe-ein-kaufhaus-mit-geschichte/a-18443892" "das-kadewe-ein-kaufhaus-mit-geschichte" &
getfiles "www.dw.de/de/kaffeekauf-mit-gutem-gewissen/a-16728425" "kaffeekauf-mit-gutem-gewissen" &
getfiles "www.dw.de/de/kampf-am-gartenzaun/a-5378587" "kampf-am-gartenzaun" &
getfiles "www.dw.de/de/eine-besondere-schulkantine/a-17996869" "eine-besondere-schulkantine" &
getfiles "www.dw.de/de/wirtschaftsfaktor-karneval/a-17396090" "wirtschaftsfaktor-karneval" &
getfiles "www.dw.de/de/karriereaussichten-an-deutschen-hochschulen/a-18456952" "karriereaussichten-an-deutschen-hochschulen" &
getfiles "www.dw.de/de/kinder-und-karriere/a-1212213" "kinder-und-karriere" &
getfiles "www.dw.de/de/das-kinderradio-radijojo/a-16643808" "das-kinderradio-radijojo" &
getfiles "www.dw.de/de/kindersprachspiele/a-509479" "kindersprachspiele" &
getfiles "www.dw.de/de/das-kiosksterben/a-18467956" "das-kiosksterben" &
getfiles "www.dw.de/de/auf-der-cranger-kirmes/a-18270861" "auf-der-cranger-kirmes" &
getfiles "www.dw.de/de/kleidung-ohne-gift/a-17986509" "kleidung-ohne-gift" &
getfiles "www.dw.de/de/klingen-aus-solingen/a-18233873" "klingen-aus-solingen" &
getfiles "www.dw.de/de/der-knast/a-5762123" "der-knast" &
getfiles "www.dw.de/de/in-der-kochschule-kochen-ist-keine-kunst/l-18879993" "in-der-kochschule-kochen-ist-keine-kunst" &
getfiles "www.dw.de/de/eine-kleine-kölsch-kunde/a-5421577" "eine-kleine-kölsch-kunde" &
getfiles "www.dw.de/de/konjunktiv/a-1149852" "konjunktiv" &
getfiles "www.dw.de/de/der-korruptionsermittler/a-18502946" "der-korruptionsermittler" &
getfiles "www.dw.de/de/deutsche-küche/a-1014813" "deutsche-küche" &
getfiles "www.dw.de/de/küfer-in-deutschland/a-6041631" "küfer-in-deutschland" &
getfiles "www.dw.de/de/kühlschrank/a-933290" "kühlschrank" &
getfiles "www.dw.de/de/die-kunst-der-worte/a-1225826" "die-kunst-der-worte" &
getfiles "www.dw.de/de/kunst-im-knast/a-6037442" "kunst-im-knast" &
getfiles "www.dw.de/de/kunst-klischees-und-kulturbanausen/a-5363261" "kunst-klischees-und-kulturbanausen" &
getfiles "www.dw.de/de/kunstakademie/a-347037" "kunstakademie" &
getfiles "www.dw.de/de/deutsch-lernen-mit-harry/a-19042758" "deutsch-lernen-mit-harry" &
getfiles "www.dw.de/de/association-for-language-learning-all/a-19144330" "association-for-language-learning-all" &
getfiles "www.dw.de/de/28122015-langsam-gesprochene-nachrichten/a-18944804" "28122015-langsam-gesprochene-nachrichten" &
getfiles "www.dw.de/de/datenschutzerklärung/a-18265186" "datenschutzerklärung" &
