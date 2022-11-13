## Description
Grabs and parses subdomains from `crt.sh`

## Installation
```
wget https://raw.githubusercontent.com/JoshMorrison99/crt.sh-Subdomain-Grabber/main/crt.sh
```

```
chmod +x crt.sh
```

```
./crt.sh shelled.io
```

## Usage
```
./crt.sh shelled.io
```
## Usage Multiple Root Domains
```
cat subs.txt | while read line; do crt.sh $line > subs_$line; done
```

