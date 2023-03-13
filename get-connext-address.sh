port=$(cat config.yaml  |grep "port: " |cut -d " " -f 2)
addr=$(curl -s -k https://127.0.0.1:${port}/address)
echo "Connext watchtowers public address is ${addr}. Use this to top up with funds."