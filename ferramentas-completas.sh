#!/bin/bash
apt update -y ; apt upgrade -y ; apt update -y

apt install golang -y

mkdir /root/ferramentas
mkdir /root/ferramentas/bounts
mkdir /root/ferramentas/wordlists
mkdir /root/ferramentas/wordlists/diretorios
mkdir /root/ferramentas/wordlists/parametros
mkdir /root/ferramentas/wordlists/api-end-points
mkdir /root/ferramentas/wordlists/subdomains
mkdir /root/ferramentas/wordlists/path-tranversal
mkdir /root/ferramentas/wordlists/ssrf




apt install ffuf -y

echo "brute diretorio = ffuf -u https://url.txt/FUZZ -w /usr/share/wordlists/dirb/common.txt"> /root/ferramentas/bounts/ffuf.txt
echo "brute parametros=  ffuf -u https://url.txt/install.php?FUZZ=test -w /usr/share/wordlists/dirb/common.txt -fs tamanho-do-lenght-que-quer excluir" >> /root/ferramentas/bounts/ffuf.txt 

cd /root/ferramentas;git clone https://github.com/GerbenJavado/LinkFinder.git;cd LinkFinder; python3 setup.py install;cd ..
cd /root/ferramentas;git clone https://github.com/cujanovic/SSRF-Testing.git;cd ..
cd /root/ferramentas; git clone https://github.com/R0X4R/ssrf-tool.git;cd ssrf-tool;go build ssrftool.go && mv ssrftool /usr/bin/;cd ..



echo "xargs -a AliveJs.txt -n 2 -I@ bash -c \"echo -e '\n[URL]: @\n'; python3 /home/steven/linkfinder.py -i @ -o cli\"​" > /root/ferramentas/bounts/linkfinder-end-points-do-js.txt

wget https://raw.githubusercontent.com/tomnomnom/hacks/master/anti-burl/main.go ;go build main.go ; rm main.go ; mv main anti-burl ; mv anti-burl /usr/bin/

echo "subfinder -d yahoo.com -silent | httpx -silent >> domains | ssrftool -domains domains -payloads important/ssrf.txt -silent=false -paths=true -patterns important/patterns.txt" > /root/ferramentas/bounts/ssrf.txt 
echo "echo \"https://www.twitter.com\" | getJS -complete | anew domains | ssrftool -domains domains -silent=false -brute=true -gen=true -patterns patterns.txt  -parameters params.txt" >> /root/ferramentas/bounts/ssrf.txt 
echo "echo \"twitter.com\" | waybackurls >> domains; ssrftool -domains domains -silent=false -paths=false -payloads important/ssrf.txt" >> /root/ferramentas/bounts/ssrf.txt 


echo "pegando os js com status 200 = cat js | anti-burl  | anew jsonly.txt" > /root/ferramentas/bounts/anti-burl.txt

go install github.com/dwisiswant0/cf-check@latest
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
go install github.com/tomnomnom/waybackurls@latest
echo "cat domains.txt | waybackurls | grep -Eo \"(http|https)://[^/\"].*.js+\"|httpx -silent | anew  " > /root/ferramentas/bounts/waybackurls-grep-js.txt

echo "ssti = waybackurls usaa.com | qsreplace \"test{{7*7}}\" | ffuf -w - -u FUZZ -mr \"test49\" -t 300 -o chaos.ssti.txt" >> /root/ferramentas/bounts/waybackurls-grep-js.txt
go install github.com/projectdiscovery/katana/cmd/katana@latest
go install github.com/tomnomnom/gf@latest
go install github.com/003random/getJS@latest
go install github.com/lc/gau/v2/cmd/gau@latest

echo "getallurls (gau) busca URLs conhecidas do AlienVault's Open Threat Exchange , Wayback Machine, Common Crawl e URLScan para qualquer domínio específico. Inspirado pelos waybackurls de Tomnomnom" > /root/ferramentas/bounts/gau.txt
echo "cat domains.txt | gau --threads 5" >> /root/ferramentas/bounts/gau.txt
echo "gau example.com google.com" >> /root/ferramentas/bounts/gau.txt
echo "gau --o example-urls.txt example.com" >> /root/ferramentas/bounts/gau.txt
echo "gau --blacklist png,jpg,gif example.com" >> /root/ferramentas/bounts/gau.txt

go install github.com/jaeles-project/gospider@latest
go install -v github.com/lc/subjs@latest

echo "cat hosts.txt | gau | subjs |anew js.txt " > /root/ferramentas/bounts/subjs.txt

go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
echo "echo 173.0.84.0/24 | httpx -silent" > /root/ferramentas/bounts/httpx.txt

echo "cat sites.txt | httpx -silent" >> /root/ferramentas/bounts/httpx.txt


go install -v github.com/tomnomnom/assetfinder@latest;
echo "assetfinder --subs-only host.com" > /root/ferramentas/bounts/usage-assetfinde.txt 

go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
echo "echo hackerone.com | subfinder -silent | httpx -silent" > /root/ferramentas/bounts/subfinder.txt

echo "xargs -a listadesites -I@ -P 10 bash -c 'assetfinder @ | anew listasite2 '" >>/root/ferramentas/bounts/subfinder.txt

go install -v github.com/tomnomnom/anew@latest
echo "echo hackerone.com | subfinder -silent| anew | httpx -silent" > /root/ferramentas/bounts/anew.txt

go install -v github.com/OWASP/Amass@latest
echo "Brute = amass enum -active -d owasp.org -brute -w /root/dns_lists/deepmagic.com-top50kprefixes.txt -src -ip -dir amass4owasp -config /root/amass/config.ini -o amass_results_owasp.txt"  > /root/ferramentas/bounts/amass.txt

echo "ssti = amass enum -active -d site.com | waybackurls -silent | qsreplace \"test{{2*2}}\" | ffuf -w - -u FUZZ -mr \"test4\" -t 300" >> /root/ferramentas/bounts/amass.txt

echo "amass enum -active -d site.com -o site.txt" >> /root/ferramentas/bounts/amass.txt

echo "dorks google para bounts" > /root/ferramentas/bounts/dork-para-bouts.txt

echo "inurl:responsible disclosure program" >> /root/ferramentas/bounts/dork-para-bouts.txt

echo "inurl:vulnerability disclosure program" >> /root/ferramentas/bounts/dork-para-bouts.txt

echo "inurl:vulnerability program rewards" >> /root/ferramentas/bounts/dork-para-bouts.txt

echo "inurl:security@ report vulnerability" >> /root/ferramentas/bounts/dork-para-bouts.txt

echo "inurl:bugbounty reward program" >> /root/ferramentas/bounts/dork-para-bouts.txt

go install github.com/j3ssie/metabigor@latest
go install github.com/hakluke/hakrevdns@latest
echo "​echo 'paypal' | metabigor net --org -v | awk '{print $3}' | sed 's/[[0-9]]\+\.//g' | xargs -I@ sh -c 'prips @ | hakrevdns | anew'" > /root/ferramentas/bounts/asn-enum.txt

echo "enum org = echo 'dod' | metabigor net --org​" >> /root/ferramentas/bounts/asn-box-de-ip-enum.txt

cd /root/ferramentas/ ;git clone https://github.com/devanshbatham/ParamSpider; cd ParamSpider;pip3 install -r requirements.txt; cd ..
cd /root/ferramentas/ ;git clone https://github.com/Th0h0/autossrf.git; cd autossrf;pip3 install -r requirements.txt; cd ..

echo "python3 /root/ferramentas/ParamSpider/paramspider.py --domain hackerone.com --exclude php,jpg,svg --output site.txt" > /root/ferramentas/bounts/paramspider.txt

go install -v github.com/dwisiswant0/hinject@latest

echo "teste de possivel vuln de cabeçalho https://hackerone.com/ | hinject -v" > /root/ferramentas/bounts/test-vuln-cabeçalho.txt

go install github.com/tomnomnom/qsreplace@latest

echo "cat urls.txt | qsreplace -a newval " > /root/ferramentas/bounts/qsreplace.txt
echo "https://example.com/path?one=1newval&two=2newval " >> /root/ferramentas/bounts/qsreplace.txt
echo "cat urls.txt | qsreplace newval " >> /root/ferramentas/bounts/qsreplace.txt
echo "https://example.com/path?one=1newval&two=newval " >> /root/ferramentas/bounts/qsreplace.txt


echo "ditto -domain usaa.com -available" > /root/ferramentas/bounts/ditto-domain-pishing.txt


cd /root/ferramentas/wordlists/api-end-points/ ;wget https://wordlists-cdn.assetnote.io/data/automated/httparchive_apiroutes_2022_10_28.txt ;cd ..


cd /root/ferramentas/wordlists/diretorios/ ;wget https://wordlists-cdn.assetnote.io/data/automated/httparchive_directories_1m_2022_10_28.txt;cd ..


cd /root/ferramentas/wordlists/diretorios/ ;wget https://wordlists-cdn.assetnote.io/data/automated/httparchive_html_htm_2022_05_28.txt;cd ..

cd /root/ferramentas/wordlists/subdomains/ ;wget https://wordlists-cdn.assetnote.io/data/manual/2m-subdomains.txt;cd ..

cd /root/ferramentas/wordlists/subdomains/ ;wget https://wordlists-cdn.assetnote.io/data/manual/best-dns-wordlist.txt;cd ..

cd /root/ferramentas/wordlists/parametros/ ;wget https://raw.githubusercontent.com/lutfumertceylan/top25-parameter/master/SQLi-parameters.txt;cd ..

cd /root/ferramentas/wordlists/parametros/ ;wget https://raw.githubusercontent.com/lutfumertceylan/top25-parameter/master/lfi-parameters.txt;cd ..

cd /root/ferramentas/wordlists/parametros/ ;wget https://raw.githubusercontent.com/lutfumertceylan/top25-parameter/master/openredirect-parameters.txt;cd ..

cd /root/ferramentas/wordlists/parametros/ ;wgethttps://raw.githubusercontent.com/lutfumertceylan/top25-parameter/master/rce-paramaters-get-based.txt;cd ..

cd /root/ferramentas/wordlists/parametros/ ;wget https://raw.githubusercontent.com/lutfumertceylan/top25-parameter/master/ssrf-parameters.txt;cd ..

cd /root/ferramentas/wordlists/parametros/ ;wget https://raw.githubusercontent.com/lutfumertceylan/top25-parameter/master/xss-parameters.txt;cd ..

cd /root/ferramentas/wordlists/path-tranversal/ ;wget https://raw.githubusercontent.com/omurugur/Path_Travelsal_Payload_List/master/Payload/Dp.txt; cd ..

cd /root/ferramentas/wordlists/path-tranversal/ ;wget https://raw.githubusercontent.com/omurugur/Path_Travelsal_Payload_List/master/Payload/Deep-Travelsal.txt;mv Deep-Travelsal.txt path-tranversal-2.txt;cd ..

cd /root/ferramentas/wordlists/ssrf; wget https://raw.githubusercontent.com/R0X4R/ssrf-tool/main/important/payloads.txt;cd ..
cd /root/ferramentas/ ; git clone https://github.com/ticofookfook/Git-dorcker.git ; cd Git-dorcker ; pip3 install -r requerimentos.txt ;chmod +x dork.sh ;cd ..

echo "salve seu token api do git no arquivo tokenfile dentro da pasta tf =python3 GitDorker.py -tf TOKENSFILE -q tesla.com -d Dorks/DORKFILE -o tesla" > /root/ferramentas/bounts/git-dorks.txt


go install github.com/gwen001/github-endpoints@latest
go install github.com/hahwul/dalfox/v2@latest

echo "github-endpoints -q -k -d site.txt -t /root/ferramentas/Git-dorcker/tf/TOKENSFILE" >/root/ferramentas/bounts/git-dork-end-points.txt

go install github.com/KathanP19/Gxss@latest

apt install ruby-rubygems -y ; gem install XSpear ;gem install colorize;gem install selenium-webdriver;gem install terminal-table;gem install progress_bar

echo "testar todos parametros = XSpear -u 'https://www.hahwul.com/?q=123' --cookie='role=admin' -v 1 -a" > /root/ferramentas/bounts/XSpear-xss-testes.txt

echo "xspear -u \"http://testphp.vulnweb.com/search.php?test=query\" -b \"https://hahwul.xss.ht\" -a" >> /root/ferramentas/bounts/XSpear-xss-testes.txt

echo "python3 paramspider.py --domain paytm.com -o test.txt ; cat test.txt | Gxss -p BITCH | dalfox pipe --mining-dict /root/paytm.com.txt --skip-bav" >> /root/ferramentas/bounts/xss-testes.txt

pip3 install arjun -y

echo "arjun -i listasite.txt -ot saida.txt -t 10" > /root/ferramentas/bounts/arjur-paramets.txt


cd /root/ferramentas/ ; git clone git clone https://github.com/guelfoweb/knock.git; cd knock; pip3 install -r requirements.txt; cd ..

echo "recon dns knock = python3 /root/ferramentas/knock/knockpy.py domain.com " > /root/ferramentas/bounts/knock-recon-dns.txt

go install github.com/tomnomnom/meg@latest

go install github.com/j3ssie/sdlookup@latest

echo "busca por portas no shodan e verifica se tem cves  = https://github.com/j3ssie/sdlookup" > /root/ferramentas/bounts/sdlookup-varrer-ports-shodan.txt


cd /root/ferramentas/ ; git clone https://github.com/vortexau/dnsvalidator.git;cd dnsvalidator ;python3 setup.py install ;cd ..

echo "dnsvalidator -tL https://public-dns.info/nameservers.txt -threads 20 -o resolvers.txt"> /root/ferramentas/bounts/dnsvalitor-dns-para-proxy

go install github.com/d3mondev/puredns/v2@latest

echo "puredns bruteforce wordlist-dns.txt yahoo.com -r ips-do-dnsvalitor.txt -w output.txt" > /root/ferramentas/bounts/puredns-bruteforce.txt


cd /root/ferramentas/ ; git clone https://github.com/blechschmidt/massdns.git;cd massdns; make ; make install ;cd ..








mv ~/go/bin/* /usr/bin/





