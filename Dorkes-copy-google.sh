echo #!/bin/bash 
echo "" 
echo -n "Coloque o site -->: ";read site
echo ""
echo "site:\"$site\" intitle:\"Index of\" finance.xls"
echo ""
echo "site:\"$site\" intitle:\"Apache HTTP Server\" intitle:\"documentation\""
echo ""
echo "site:\"$site\" intitle:\"Welcome to Windows 2000 Internet Services\""
echo 
echo "site:\"$site\" intitle:\"Index of\" \".htpasswd\" \"htgroup\" -intitle:\"dist\" -apache -htpasswd.c"
echo 
echo "site:\"$site\" intitle:index.of mt-db-pass.cgi"
echo 
echo "site:\"$site\" \"Index of /backup\""
echo 
echo "site:\"$site\" intitle:\"Index of\" pwd.db"
echo 
echo "site:\"$site\" intitle:\"Index of c:\Windows\""
echo 
echo "site:\"$site\" inurl:secring ext:skr | ext:pgp | ext:bak | ext:pdf | ext:xls" 
echo 
echo "site:\"$site\" filetype:lic lic intext:key"
echo 
echo "site:\"$site\" intext:key | [intext:cpf | [intext:password | [intext:senha | intext:hash"
echo 
echo "site:\"$site\" inurl:\"wvdial.conf\" intext:\"password\""
echo 
echo "site:\"$site\" inurl:\"slapd.conf\" intext:\"rootpw\" -manpage -\"Manual Page\" -man: -sample"
echo 
echo "site:\"$site\" inurl:\"slapd.conf\" intext:\"credentials\" -manpage -\"Manual Page\" -man: -sample"
echo 
echo "site:\"$site\" inurl:ospfd.conf intext:password -sample -test -tutorial -download"
echo 
echo "site:\"$site\" ext:pwd inurl:(service | authors | administrators | users) \"# -FrontPage-\""
echo 
echo "site:\"$site\" intext:\"d.aspx?id\" || inurl:\"d.aspx?id\""
echo 
echo "site:\"$site\" intext:SQLiteManager inurl:main.php"
echo ""
