# Bugbounts-ferramentas-e-tutoriais

Esse script baixa as ferramentas mais utilizadas em pentest e bounts, cria arquivos txt passando como usa cada uma, e ainda baixa wordlists mais atuais de parâmetros, dns, diretorios e etc...

<h1>Para fazer um scan na rede do alvo procurando novos ips internos ativos com portas abertas</h1>
ip route list | awk {'print $1'} | grep [[:digit:]];echo -e "\e[1;41;1;45mColoqueo ip assim -----> 172.0.0. tire o ultimo numero\e[0m" ;echo -en "Escolha o ip e coloque aqui -->: ";read num ; for i in $(seq 1 255);do ping -W 1 -c 1 $num$i | grep '64 bytes' | awk {'print $4'} | sed 's/.$//g';done > ipvalidos.txt ;for a in $(cat ipvalidos.txt);do nc -nv -w 1 -z $a 80 443 22 21 3306 25 445 139;done
</br>
<h2>Dowlonad do socat para o pivoting</h2>

Comand = wget https://github.com/andrew-d/static-binaries/raw/master/binaries/linux/x86_64/socat;chmod +x socat ;./socat -h

Tutorial = https://deephacking.tech/pivoting-con-socat/
