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
getfiles "www.dw.de/de/mehr-als-nur-ein-hobby-die-imkerei/a-18464797" "mehr-als-nur-ein-hobby-die-imkerei" &
getfiles "www.dw.de/de/im-reich-der-insekten/a-1737910" "im-reich-der-insekten" &
getfiles "www.dw.de/de/jacke-wie-hose/a-5231786" "jacke-wie-hose" &
getfiles "www.dw.de/de/auf-zum-fröhlichen-jagen/a-1376305" "auf-zum-fröhlichen-jagen" &
getfiles "www.dw.de/de/jägerlatein/a-480554" "jägerlatein" &
getfiles "www.dw.de/de/dufte-jiddische-wörter-im-deutschen/a-4786777" "dufte-jiddische-wörter-im-deutschen" &
getfiles "www.dw.de/de/jodeln-auf-dem-berg/l-19248977" "jodeln-auf-dem-berg" &
getfiles "www.dw.de/de/in-der-jugendherberge/a-15690066" "in-der-jugendherberge" &
getfiles "www.dw.de/de/dafwebkon-willkommen-im-multimedialen-unterricht/a-19098815" "dafwebkon-willkommen-im-multimedialen-unterricht" &
getfiles "www.dw.de/de/datenschutzerklärung/a-18265186" "datenschutzerklärung" &
