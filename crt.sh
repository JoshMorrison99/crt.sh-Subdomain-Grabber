curl -s https://crt.sh/?q=$1 > web.txt
cat web.txt | grep $1 | sed 's/<BR>/\n/g' | sed 's/<\/TD>//' | sed 's/<TD>//' | sed 's/*.//' | tr -d " " | sort | uniq | sed '/<TITLE>/,$!d' | tail -n +2
