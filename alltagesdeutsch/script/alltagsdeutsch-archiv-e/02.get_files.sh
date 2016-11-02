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
getfiles "www.dw.de/de/e-autos-in-deutschland/a-18492021" "e-autos-in-deutschland" &
getfiles "www.dw.de/de/migranten-im-ehrenamt/a-15776065" "migranten-im-ehrenamt" &
getfiles "www.dw.de/de/eichen-in-der-kühlkammer/a-17537028" "eichen-in-der-kühlkammer" &
getfiles "www.dw.de/de/dorfsterben-in-der-eifel/a-16947056" "dorfsterben-in-der-eifel" &
getfiles "www.dw.de/de/einzelkinder/a-1060977" "einzelkinder" &
getfiles "www.dw.de/de/alternatives-eis/a-15392277" "alternatives-eis" &
getfiles "www.dw.de/de/eishockey/a-5095860" "eishockey" &
getfiles "www.dw.de/de/eiskunstlauf/a-275996" "eiskunstlauf" &
getfiles "www.dw.de/de/das-ende/a-17196801" "das-ende" &
getfiles "www.dw.de/de/auf-der-entbindungsstation/a-6000145" "auf-der-entbindungsstation" &
getfiles "www.dw.de/de/entwicklungshelfer/a-276084" "entwicklungshelfer" &
getfiles "www.dw.de/de/erntedank/a-17044430" "erntedank" &
getfiles "www.dw.de/de/esperanto-mehr-als-eine-hilfssprache/l-18703640" "esperanto-mehr-als-eine-hilfssprache" &
getfiles "www.dw.de/de/krankhafte-essstörungen-magersucht-und-bulimie/l-18629613" "krankhafte-essstörungen-magersucht-und-bulimie" &
getfiles "www.dw.de/de/sprechende-etiketten/a-17551269" "sprechende-etiketten" &
getfiles "www.dw.de/de/deutsch-lernen-mit-harry/a-19042758" "deutsch-lernen-mit-harry" &
getfiles "www.dw.de/de/association-for-language-learning-all/a-19144330" "association-for-language-learning-all" &
getfiles "www.dw.de/de/28122015-langsam-gesprochene-nachrichten/a-18944804" "28122015-langsam-gesprochene-nachrichten" &
getfiles "www.dw.de/de/datenschutzerklärung/a-18265186" "datenschutzerklärung" &
