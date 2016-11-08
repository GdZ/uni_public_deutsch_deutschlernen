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
getfiles "www.dw.de/de/um-ein-haar/a-1533479" "um-ein-haar" &
getfiles "www.dw.de/de/haarspaltereien/a-569211" "haarspaltereien" &
getfiles "www.dw.de/de/harmonie-auf-dem-eis/a-17375334" "harmonie-auf-dem-eis" &
getfiles "www.dw.de/de/alte-häuser-alte-hasen/a-5490717" "alte-häuser-alte-hasen" &
getfiles "www.dw.de/de/die-hand/a-1511983" "die-hand" &
getfiles "www.dw.de/de/behütetes-handwerk/a-16727254" "behütetes-handwerk" &
getfiles "www.dw.de/de/handwerker-im-haus/a-15250206" "handwerker-im-haus" &
getfiles "www.dw.de/de/zünftige-handwerkssprache/a-14916611" "zünftige-handwerkssprache" &
getfiles "www.dw.de/de/harfenklänge/a-15235311" "harfenklänge" &
getfiles "www.dw.de/de/im-hauptbahnhof/l-19229028" "im-hauptbahnhof" &
getfiles "www.dw.de/de/der-deutsche-und-sein-haustier/a-5514606" "der-deutsche-und-sein-haustier" &
getfiles "www.dw.de/de/heilpraktiker/a-771730" "heilpraktiker" &
getfiles "www.dw.de/de/trautes-heim/a-915972" "trautes-heim" &
getfiles "www.dw.de/de/heimat/a-4602759" "heimat" &
getfiles "www.dw.de/de/der-herbst/a-17055389" "der-herbst" &
getfiles "www.dw.de/de/moderne-hexen/a-618282" "moderne-hexen" &
getfiles "www.dw.de/de/himmel/a-1041787" "himmel" &
getfiles "www.dw.de/de/himmel-und-hölle/a-5122589" "himmel-und-hölle" &
getfiles "www.dw.de/de/himmlische-klänge-auf-erden/l-35951052" "himmlische-klänge-auf-erden" &
getfiles "www.dw.de/de/hochzeit/a-1313291" "hochzeit" &
getfiles "www.dw.de/de/hochzeitsbräuche/a-509458" "hochzeitsbräuche" &
getfiles "www.dw.de/de/der-holocaust-im-unterricht/l-18921041" "der-holocaust-im-unterricht" &
getfiles "www.dw.de/de/hopfen-aus-der-hallertau/l-18629437" "hopfen-aus-der-hallertau" &
getfiles "www.dw.de/de/hopfen-und-malz/a-860272" "hopfen-und-malz" &
getfiles "www.dw.de/de/hörgeräte-aus-deutschland/l-18762012" "hörgeräte-aus-deutschland" &
getfiles "www.dw.de/de/hummer-aus-helgoland/a-18509561" "hummer-aus-helgoland" &
getfiles "www.dw.de/de/humor-im-hörsaal/a-17456430" "humor-im-hörsaal" &
getfiles "www.dw.de/de/auf-den-hund-gekommen/a-921293" "auf-den-hund-gekommen" &
getfiles "www.dw.de/de/gut-behütet/a-1564436" "gut-behütet" &
getfiles "www.dw.de/de/beruf-hutmacher-und-modistin/a-5634081" "beruf-hutmacher-und-modistin" &
getfiles "www.dw.de/de/deutsch-lernen-mit-harry/a-19042758" "deutsch-lernen-mit-harry" &
getfiles "www.dw.de/de/association-for-language-learning-all/a-19144330" "association-for-language-learning-all" &
getfiles "www.dw.de/de/28122015-langsam-gesprochene-nachrichten/a-18944804" "28122015-langsam-gesprochene-nachrichten" &
getfiles "www.dw.de/de/datenschutzerklärung/a-18265186" "datenschutzerklärung" &
