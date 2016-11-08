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
getfiles "www.dw.de/de/umgedrehter-unterricht/a-16540756" "umgedrehter-unterricht" &
getfiles "www.dw.de/de/unterbezahlt-und-überfordert-lehrkräfte-in-integrationskursen/l-19141372" "unterbezahlt-und-überfordert-lehrkräfte-in-integrationskursen" &
getfiles "www.dw.de/de/im-universitätstheater/a-17862512" "im-universitätstheater" &
getfiles "www.dw.de/de/ungeziefer/a-833850" "ungeziefer" &
getfiles "www.dw.de/de/die-band-unheilig/a-16771462" "die-band-unheilig" &
getfiles "www.dw.de/de/unkraut-vergeht-nicht/a-297817" "unkraut-vergeht-nicht" &
getfiles "www.dw.de/de/unterwegs-in-der-fußgängerzone/l-18618848" "unterwegs-in-der-fußgängerzone" &
getfiles "www.dw.de/de/urlaub/a-589654" "urlaub" &
getfiles "www.dw.de/de/manager-im-überlebenscamp/a-18082679" "manager-im-überlebenscamp" &
getfiles "www.dw.de/de/urlaub-daheim/a-15160659" "urlaub-daheim" &
getfiles "www.dw.de/de/urlaubsfotos-mit-erinnerungswert/l-19201392" "urlaubsfotos-mit-erinnerungswert" &
getfiles "www.dw.de/de/schnitzel-für-vegetarier/a-17210299" "schnitzel-für-vegetarier" &
getfiles "www.dw.de/de/deutsche-vereinsmeierei/a-15263877" "deutsche-vereinsmeierei" &
getfiles "www.dw.de/de/versandhandel-in-deutschland/a-16416770" "versandhandel-in-deutschland" &
getfiles "www.dw.de/de/poesie-von-versprechern/a-5670338" "poesie-von-versprechern" &
getfiles "www.dw.de/de/verwaltungssprache/a-6011508" "verwaltungssprache" &
getfiles "www.dw.de/de/vollkornbäcker/a-297796" "vollkornbäcker" &
getfiles "www.dw.de/de/datenschutzerklärung/a-18265186" "datenschutzerklärung" &
