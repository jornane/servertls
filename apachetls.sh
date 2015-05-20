#!/bin/sh
case "$1" in
	"Modern" | "Intermediate" | "Old")
		output="$(curl -sSL 'https://wiki.mozilla.org/index.php?title=Security/Server_Side_TLS&action=raw' | grep -A512 "== .*$1.* ==")"
		echo "$output" | grep -m1 "Ciphersuite: '''" | sed -e "s/^.* '''/SSLCipherSuite /" -e "s/'''//"
		echo "$output" | grep -m1 "Versions: '''" | sed -e "s/^.* '''/SSLProtocol /" -e "s/'''//" -e "s/,//"
		echo 'SSLHonorCipherOrder on'
    	echo 'SSLCompression off'
		;;
	*)
		echo "Usage: $0 Modern | Intermediate | Old"
		;;
esac
