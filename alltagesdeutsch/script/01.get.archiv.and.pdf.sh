getFiles()
{
    FT_PAGE="/de/"
    FT_PAGE_A="\/a-|\/l-"
    FT_PAGE_NOARCHIV="alltagsdeutsch-archiv"
    page_url=$1;
    folder=$2;
    echo $page_url $folder
    log_file="$folder.log"
    page_html="$folder.html"
    old=${PWD}
    cd $folder;
    wget ${page_url} -o ${log_file} -O ${page_html}
    cat ${page_html} | grep ${FT_PAGE} | grep -E ${FT_PAGE_A} | grep -v ${FT_PAGE_NOARCHIV} | cut -d'"' -f2 > urls
    cp -vf urls 02.get_files.sh
    cd $old;
}

# getFiles "www.dw.de/de/alltagsdeutsch-archiv-a/a-2206788" "alltagsdeutsch-archiv-a"
getFiles "www.dw.de/de/alltagsdeutsch-archiv-b/a-2208285" "alltagsdeutsch-archiv-b"
getFiles "www.dw.de/de/alltagsdeutsch-archiv-cd/a-2208326" "alltagsdeutsch-archiv-cd"
getFiles "www.dw.de/de/alltagsdeutsch-archiv-e/a-2208340" "alltagsdeutsch-archiv-e"
getFiles "www.dw.de/de/alltagsdeutsch-archiv-f/a-2208347" "alltagsdeutsch-archiv-f"
getFiles "www.dw.de/de/alltagsdeutsch-archiv-g/a-2208354" "alltagsdeutsch-archiv-g"
getFiles "www.dw.de/de/alltagsdeutsch-archiv-h/a-2208360" "alltagsdeutsch-archiv-h"
getFiles "www.dw.de/de/alltagsdeutsch-archiv-ij/a-2208375" "alltagsdeutsch-archiv-ij"
getFiles "www.dw.de/de/alltagsdeutsch-archiv-k/a-2208382" "alltagsdeutsch-archiv-k"
getFiles "www.dw.de/de/alltagsdeutsch-archiv-l/a-2208384" "alltagsdeutsch-archiv-l"
getFiles "www.dw.de/de/alltagsdeutsch-archiv-m/a-2208502" "alltagsdeutsch-archiv-m"
getFiles "www.dw.de/de/alltagsdeutsch-archiv-n/a-2208510" "alltagsdeutsch-archiv-n"
getFiles "www.dw.de/de/alltagsdeutsch-archiv-o/a-2208518" "alltagsdeutsch-archiv-o"
getFiles "www.dw.de/de/alltagsdeutsch-archiv-pq/a-2208527" "alltagsdeutsch-archiv-pq"
getFiles "www.dw.de/de/alltagsdeutsch-archiv-r/a-2208544" "alltagsdeutsch-archiv-r"
getFiles "www.dw.de/de/alltagsdeutsch-archiv-s/a-2208548" "alltagsdeutsch-archiv-s"
getFiles "www.dw.de/de/alltagsdeutsch-archiv-t/a-2208572" "alltagsdeutsch-archiv-t"
getFiles "www.dw.de/de/alltagsdeutsch-archiv-uv/a-2208577" "alltagsdeutsch-archiv-uv"
getFiles "www.dw.de/de/alltagsdeutsch-archiv-w/a-2208591" "alltagsdeutsch-archiv-w"
getFiles "www.dw.de/de/alltagsdeutsch-archiv-xyz/a-2208599" "alltagsdeutsch-archiv-xyz"