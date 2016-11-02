rm -vf s-*
wget http://www.dw.com/de/deutsch-lernen/top-thema/s-8031 -o log;
#echo cat s-* | grep 'top-thema-mit-vokabeln-archiv' | cut -d'"' -f2
cat s-* | grep -E 'top-thema-mit-vokabeln-archiv|.pdf' | cut -d'"' -f2
