#!/bin/bash

public_ip=$(curl --silent ident.me)
pub_key=$(docker-compose exec lnd lncli  --macaroonpath /root/.lnd/data/chain/bitcoin/testnet/admin.macaroon tower info |jq -r .pubkey)
port="9911"
echo "your watchtower url is:  ${pub_key}@${public_ip}:${port}"