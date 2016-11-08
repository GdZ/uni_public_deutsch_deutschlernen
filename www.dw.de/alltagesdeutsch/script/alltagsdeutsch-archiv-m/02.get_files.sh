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
getfiles "www.dw.de/de/die-macht-des-machens/a-933317" "die-macht-des-machens" &
getfiles "www.dw.de/de/rund-um-den-maibaum/a-5258617" "rund-um-den-maibaum" &
getfiles "www.dw.de/de/mailmentoring/a-16677348" "mailmentoring" &
getfiles "www.dw.de/de/manager-im-überlebenscamp/a-18082679" "manager-im-überlebenscamp" &
getfiles "www.dw.de/de/gute-manieren/a-16819363" "gute-manieren" &
getfiles "www.dw.de/de/dürfen-männer-weinen/a-18452269" "dürfen-männer-weinen" &
getfiles "www.dw.de/de/männermagazin-im-netz/a-17213524" "männermagazin-im-netz" &
getfiles "www.dw.de/de/von-männern-und-machos/a-509412" "von-männern-und-machos" &
getfiles "www.dw.de/de/die-manns-eine-familiengeschichte/l-18857600" "die-manns-eine-familiengeschichte" &
getfiles "www.dw.de/de/märchensprache/a-352311" "märchensprache" &
getfiles "www.dw.de/de/marie-marcks/a-480609" "marie-marcks" &
getfiles "www.dw.de/de/mecklenburger-läuschen/a-275993" "mecklenburger-läuschen" &
getfiles "www.dw.de/de/die-medikamentensammler/l-19196219" "die-medikamentensammler" &
getfiles "www.dw.de/de/in-der-mensa/a-17174545" "in-der-mensa" &
getfiles "www.dw.de/de/merktechniken/l-19249207" "merktechniken" &
getfiles "www.dw.de/de/militärsprache/a-514974" "militärsprache" &
getfiles "www.dw.de/de/mittelalterliche-sprüche-teil-1/a-15266043" "mittelalterliche-sprüche-teil-1" &
getfiles "www.dw.de/de/mittelalterliche-sprüche-teil-2/a-15267975" "mittelalterliche-sprüche-teil-2" &
getfiles "www.dw.de/de/modenschau/a-901512" "modenschau" &
getfiles "www.dw.de/de/die-kunst-zu-sprechen/a-276220" "die-kunst-zu-sprechen" &
getfiles "www.dw.de/de/moto-cross/a-509449" "moto-cross" &
getfiles "www.dw.de/de/mund/a-601482" "mund" &
getfiles "www.dw.de/de/über-den-müßiggang/l-19065756" "über-den-müßiggang" &
getfiles "www.dw.de/de/musik-sprichwörter/a-15123341" "musik-sprichwörter" &
getfiles "www.dw.de/de/musik-verbindet-und-trennt/a-5511697" "musik-verbindet-und-trennt" &
getfiles "www.dw.de/de/das-mutterbild/l-19145877" "das-mutterbild" &
getfiles "www.dw.de/de/der-märchenkönig/l-19248904" "der-märchenkönig" &
getfiles "www.dw.de/de/deutsch-lernen-mit-harry/a-19042758" "deutsch-lernen-mit-harry" &
getfiles "www.dw.de/de/association-for-language-learning-all/a-19144330" "association-for-language-learning-all" &
getfiles "www.dw.de/de/28122015-langsam-gesprochene-nachrichten/a-18944804" "28122015-langsam-gesprochene-nachrichten" &
getfiles "www.dw.de/de/datenschutzerklärung/a-18265186" "datenschutzerklärung" &
