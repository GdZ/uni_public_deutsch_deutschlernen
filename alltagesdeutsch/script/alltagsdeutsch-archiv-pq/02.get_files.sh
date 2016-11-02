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
getfiles "www.dw.de/de/parktag-in-deutschland/l-19249005" "parktag-in-deutschland" &
getfiles "www.dw.de/de/partnersuche/a-629150" "partnersuche" &
getfiles "www.dw.de/de/miete-einen-pastor/a-17909695" "miete-einen-pastor" &
getfiles "www.dw.de/de/mit-pauken-und-trompeten/a-1716593" "mit-pauken-und-trompeten" &
getfiles "www.dw.de/de/pfarrer-ein-traumberuf/a-14777988" "pfarrer-ein-traumberuf" &
getfiles "www.dw.de/de/das-pferd/a-1455728" "das-pferd" &
getfiles "www.dw.de/de/pfingsten-und-der-heilige-geist/l-19131638" "pfingsten-und-der-heilige-geist" &
getfiles "www.dw.de/de/rund-um-die-pflanze/a-1122224" "rund-um-die-pflanze" &
getfiles "www.dw.de/de/pfundskerle/a-4746785" "pfundskerle" &
getfiles "www.dw.de/de/beruf-pilotin/a-17619578" "beruf-pilotin" &
getfiles "www.dw.de/de/pizza-pasta-dolce-vita/a-4562439" "pizza-pasta-dolce-vita" &
getfiles "www.dw.de/de/poesie-im-alltag/a-480603" "poesie-im-alltag" &
getfiles "www.dw.de/de/poesie-von-versprechern/a-5670338" "poesie-von-versprechern" &
getfiles "www.dw.de/de/ein-besonderer-poetry-slam/a-17881073" "ein-besonderer-poetry-slam" &
getfiles "www.dw.de/de/politikersprache/a-5419815" "politikersprache" &
getfiles "www.dw.de/de/polizeirevier/a-933298" "polizeirevier" &
getfiles "www.dw.de/de/prost-mahlzeit/a-5689609" "prost-mahlzeit" &
getfiles "www.dw.de/de/in-der-provinz/a-17752577" "in-der-provinz" &
getfiles "www.dw.de/de/provinzleben/a-753782" "provinzleben" &
getfiles "www.dw.de/de/die-psychologie-des-elfmeterschießens/a-18394145" "die-psychologie-des-elfmeterschießens" &
getfiles "www.dw.de/de/datenschutzerklärung/a-18265186" "datenschutzerklärung" &
