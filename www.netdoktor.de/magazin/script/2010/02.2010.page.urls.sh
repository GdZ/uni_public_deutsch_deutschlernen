getInhalt()
{
	inhalt_url=$1
	name=$2
	echo wget ${inhalt_url} -o ${name}.log -O ${name}.html
	wget ${inhalt_url} -o ${name}.log -O ${name}.html
}

# test
getInhalt "http://www.netdoktor.de/magazin/gentherapie-bei-erbkrankheiten-der-geflickte-code/" "gentherapie-bei-erbkrankheiten-der-geflickte-code" &
getInhalt "http://www.netdoktor.de/magazin/burnout-interview-sie-muessen-das-hamsterrad-anhalten/" "burnout-interview-sie-muessen-das-hamsterrad-anhalten" &
getInhalt "http://www.netdoktor.de/magazin/hueftoperationen-prothesen-fuer-alle/" "hueftoperationen-prothesen-fuer-alle" &
getInhalt "http://www.netdoktor.de/magazin/entspannungstechniken-fuer-kinder-abtauchen-mit-kapitaen-nemo/" "entspannungstechniken-fuer-kinder-abtauchen-mit-kapitaen-nemo" &
getInhalt "http://www.netdoktor.de/magazin/krankheitsbewaeltigung-land-in-sicht-nach-dem-tsunami/" "krankheitsbewaeltigung-land-in-sicht-nach-dem-tsunami" &
getInhalt "http://www.netdoktor.de/magazin/therapiesuche-bei-schmerzen-das-millionen-leiden/" "therapiesuche-bei-schmerzen-das-millionen-leiden" &
getInhalt "http://www.netdoktor.de/magazin/brustkrebs-interview-methode-spart-leid-und-geld/" "brustkrebs-interview-methode-spart-leid-und-geld" &
getInhalt "http://www.netdoktor.de/magazin/neue-strahlentherapie-bei-brustkrebs-einmalstrahlung-aus-der-kugel/" "neue-strahlentherapie-bei-brustkrebs-einmalstrahlung-aus-der-kugel" &
getInhalt "http://www.netdoktor.de/magazin/gene-interview-vermutete-krankheitsgene-gibt-es-so-nicht/" "gene-interview-vermutete-krankheitsgene-gibt-es-so-nicht" &
getInhalt "http://www.netdoktor.de/magazin/essen-zum-trost-macht-uebergewicht-schutzpolster-fuer-die-seele/" "essen-zum-trost-macht-uebergewicht-schutzpolster-fuer-die-seele" &
getInhalt "http://www.netdoktor.de/magazin/innocence-in-danger-e-v+netdoktor-de-spendenaktion-fuer-alle-netdoktor-de-spendet-spenden-sie-mit/" "innocence-in-danger-e-v+netdoktor-de-spendenaktion-fuer-alle-netdoktor-de-spendet-spenden-sie-mit" &
getInhalt "http://www.netdoktor.de/magazin/innocence-in-danger-e-v+netdoktor-de-spendenaktion-fuer-website-betreiber-netdoktor-de-spendet-fuer-sie/" "innocence-in-danger-e-v+netdoktor-de-spendenaktion-fuer-website-betreiber-netdoktor-de-spendet-fuer-sie" &
getInhalt "http://www.netdoktor.de/magazin/maenner-und-fruchtbarkeit-interview-an-der-spermienkrise-ist-nichts-dran/" "maenner-und-fruchtbarkeit-interview-an-der-spermienkrise-ist-nichts-dran" &
getInhalt "http://www.netdoktor.de/magazin/erste-hilfe-fuer-kinder-die-mini-sanitaeter/" "erste-hilfe-fuer-kinder-die-mini-sanitaeter" &
getInhalt "http://www.netdoktor.de/magazin/keime-in-badeseen-larven-auf-irrfahrt/" "keime-in-badeseen-larven-auf-irrfahrt" &
getInhalt "http://www.netdoktor.de/magazin/uebergewicht-operationen-schrumpfkur-fuer-den-magen/" "uebergewicht-operationen-schrumpfkur-fuer-den-magen" &
getInhalt "http://www.netdoktor.de/magazin/interview-posttraumatische-belastungsstoeungen-die-erinnerung-schwirrt-im-kopf-wie-eine-kaputte-datei/" "interview-posttraumatische-belastungsstoeungen-die-erinnerung-schwirrt-im-kopf-wie-eine-kaputte-datei" &
getInhalt "http://www.netdoktor.de/magazin/aufbewahrung-von-spenderorganen-das-spenderherz-das-laenger-lebt/" "aufbewahrung-von-spenderorganen-das-spenderherz-das-laenger-lebt" &
getInhalt "http://www.netdoktor.de/magazin/missbrauch-sexueller-missbrauch-rechtsfragen/" "missbrauch-sexueller-missbrauch-rechtsfragen" &
getInhalt "http://www.netdoktor.de/magazin/uebergewicht-und-fett-der-braune-schlankmacher/" "uebergewicht-und-fett-der-braune-schlankmacher" &
getInhalt "http://www.netdoktor.de/magazin/ernaehrung-im-mutterleib-moppel-aus-der-flasche/" "ernaehrung-im-mutterleib-moppel-aus-der-flasche" &
getInhalt "http://www.netdoktor.de/magazin/sexueller-missbrauch-traumatherapie-fuer-kinder/" "sexueller-missbrauch-traumatherapie-fuer-kinder" &
getInhalt "http://www.netdoktor.de/magazin/sexueller-missbrauch-nicht-mit-mir-kinder-und-jugendliche-stark-machen/" "sexueller-missbrauch-nicht-mit-mir-kinder-und-jugendliche-stark-machen" &
getInhalt "http://www.netdoktor.de/magazin/schlaf-ist-kein-ruhezustand-rushhour-fuer-den-koerper/" "schlaf-ist-kein-ruhezustand-rushhour-fuer-den-koerper" &
getInhalt "http://www.netdoktor.de/magazin/die-neuen-themen-boards-ihre-themen-ihre-fragen-ihre-antworten/" "die-neuen-themen-boards-ihre-themen-ihre-fragen-ihre-antworten" &
getInhalt "http://www.netdoktor.de/magazin/sexueller-missbrauch-psychische-emotionale-und-koerperliche-folgen/" "sexueller-missbrauch-psychische-emotionale-und-koerperliche-folgen" &
getInhalt "http://www.netdoktor.de/magazin/sexueller-missbrauch-anzeichen-und-hinweise/" "sexueller-missbrauch-anzeichen-und-hinweise" &
getInhalt "http://www.netdoktor.de/magazin/paedophilie/" "paedophilie" &
getInhalt "http://www.netdoktor.de/magazin/sexueller-missbrauch-die-ursachen/" "sexueller-missbrauch-die-ursachen" &
getInhalt "http://www.netdoktor.de/magazin/sexueller-missbrauch-die-taeter/" "sexueller-missbrauch-die-taeter" &
getInhalt "http://www.netdoktor.de/magazin/sexueller-missbrauch-hinschauen-und-handeln/" "sexueller-missbrauch-hinschauen-und-handeln" &
getInhalt "http://www.netdoktor.de/magazin/sexueller-missbrauch-paedophilie-interview-nicht-jeder-wird-zum-taeter/" "sexueller-missbrauch-paedophilie-interview-nicht-jeder-wird-zum-taeter" &
getInhalt "http://www.netdoktor.de/magazin/sexueller-missbrauch-die-fakten/" "sexueller-missbrauch-die-fakten" &
getInhalt "http://www.netdoktor.de/magazin/therapie-gegen-sexuellen-missbrauch-kein-taeter-werden/" "therapie-gegen-sexuellen-missbrauch-kein-taeter-werden" &
getInhalt "http://www.netdoktor.de/magazin/psychische-stoerungen-die-heimlichen-kranken/" "psychische-stoerungen-die-heimlichen-kranken" &
getInhalt "http://www.netdoktor.de/magazin/fasten-heilfasten-auszeit-vom-essen/" "fasten-heilfasten-auszeit-vom-essen" &
getInhalt "http://www.netdoktor.de/magazin/gen-analysen-dna-test-per-post/" "gen-analysen-dna-test-per-post" &
getInhalt "http://www.netdoktor.de/magazin/wachkoma-therapeuten-auf-vier-pfoten/" "wachkoma-therapeuten-auf-vier-pfoten" &
