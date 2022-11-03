curl -s https://crt.sh/?q=$1 > shelled_web.txt
cat shelled_web.txt | grep $1 | sed 's/<BR>/\n/g' | sed 's/<\/TD>//' | sed 's/<TD>//' | sed 's/*.//' | tr -d " " | sort | uniq | sed '/<TITLE>/,$!d' | tail -n +2
rm shelled_web.txt
