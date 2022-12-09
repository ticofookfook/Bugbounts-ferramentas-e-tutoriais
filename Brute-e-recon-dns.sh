#!/bin/bash

echo ""
echo "Escolha as opcoes"
echo "1 usando site crt.sh "
echo "2 usando o web archive"
echo "3 Pegar Resolvers (caso ja tenha ecolha usar no brute da 4 opcão)"
echo "4 Brute usando puredns"

read -n3 -p 'Opção: ' OPCAO

case $OPCAO in


1)#crt.sh
        echo -n "Coloque o site (exemplo usa.com ): "
        read site
        curl -s "https://crt.sh/?q=%25.$site&output=json" | jq -r '.[].name_value' | sed 's/\*\.//g' | httpx -title -silent | anew
;;

2)#webarchive

        echo -n "Coloque o site (exemplo usa.com ): "
        read site
        curl -s "http://web.archive.org/cdx/search/cdx?url=*.$site/*&output=text&fl=original&collapse=urlkey" | sed -e 's_https*://__' -e "s/\/.*//" | sort -u

;;

3)#pegando resolver
        echo "Pegando arquivos para usar como proxy"
        echo "Aconselho deixar um bom tempo para capturar bastante ips"
        dnsvalidator -tL https://public-dns.info/nameservers.txt -threads 20 -o resolvers.txt

;;
4)#brute
        echo -n "Coloque o site (exemplo usa.com ):"
        read site
        echo -n "Passe a wordlist: "
        read wl
        puredns bruteforce $wl $site -r resolvers.txt -w $site-pure-dns.txt
;;
*)
echo "Numero errado"
;;

esac
