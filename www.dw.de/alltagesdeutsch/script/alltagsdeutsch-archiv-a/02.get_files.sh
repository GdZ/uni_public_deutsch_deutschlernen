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

getfiles "www.dw.de/de/mein-deutschland-luther-und-mein-heidenkind/a-36165023" "mein-deutschland-luther-und-mein-heidenkind" &
getfiles "www.dw.de/de/eu-abgeordnete-lochbihler-konflikte-um-befreites-mossul-sind-vorprogrammiert/a-36203410" "eu-abgeordnete-lochbihler-konflikte-um-befreites-mossul-sind-vorprogrammiert" &
getfiles "www.dw.de/de/durchbruch-bei-kaisers-tengelmann/a-36171972" "durchbruch-bei-kaisers-tengelmann" &
getfiles "www.dw.de/de/auf-zum-abiball/a-16870096" "auf-zum-abiball" &
getfiles "www.dw.de/de/adverbien/a-788050" "adverbien" &
getfiles "www.dw.de/de/die-deutschen-und-der-alkohol/l-18986973" "die-deutschen-und-der-alkohol" &
getfiles "www.dw.de/de/alkoholkonsum-unter-jugendlichen/a-18037772" "alkoholkonsum-unter-jugendlichen" &
getfiles "www.dw.de/de/allergien/a-1098177" "allergien" &
getfiles "www.dw.de/de/eine-kleine-altbier-kunde/a-5470135" "eine-kleine-altbier-kunde" &
getfiles "www.dw.de/de/altenpflegekräfte-dringend-gesucht/l-19231893" "altenpflegekräfte-dringend-gesucht" &
getfiles "www.dw.de/de/auf-dem-amt/a-5445267" "auf-dem-amt" &
getfiles "www.dw.de/de/amtssprache/a-1461667" "amtssprache" &
getfiles "www.dw.de/de/frankfurter-äppelwoi/a-579957" "frankfurter-äppelwoi" &
getfiles "www.dw.de/de/arbeiterkinder-im-studium/a-16986449" "arbeiterkinder-im-studium" &
getfiles "www.dw.de/de/redensarten-aus-der-arbeitswelt/a-1365758" "redensarten-aus-der-arbeitswelt" &
getfiles "www.dw.de/de/arm-und-reich/a-5964273" "arm-und-reich" &
getfiles "www.dw.de/de/ein-rundgang-durchs-deutsche-auswandererhaus/l-18645048" "ein-rundgang-durchs-deutsche-auswandererhaus" &
getfiles "www.dw.de/de/wir-sind-anders-autismus/a-17560492" "wir-sind-anders-autismus" &
getfiles "www.dw.de/de/das-auto-der-zukunft/a-17729758" "das-auto-der-zukunft" &
getfiles "www.dw.de/de/rund-ums-auto/a-297844" "rund-ums-auto" &
getfiles "www.dw.de/de/der-deutsche-und-sein-auto/a-5459952" "der-deutsche-und-sein-auto" &
getfiles "www.dw.de/de/10-deutsch-lernen/a-19518479" "10-deutsch-lernen" &
getfiles "www.dw.de/de/deutsch-lernen-mit-harry/a-19042758" "deutsch-lernen-mit-harry" &
getfiles "www.dw.de/de/association-for-language-learning-all/a-19144330" "association-for-language-learning-all" &
getfiles "www.dw.de/de/datenschutzerklärung/a-18265186" "datenschutzerklärung" &
