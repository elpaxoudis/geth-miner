#!/bin/sh

# check if geth directory exists and do geth init if it does not exist
[ ! -d "/root/.ethereum/geth" ] && geth init genesis.json

# check if directory keystore is empty and if it is create a new account
[ ! "$(ls -A /root/.ethereum/keystore)" ] && geth account new --password ./pass.txt

# start geth in mining mode
geth \
--mine \
--minerthreads 1 \
--networkid 555 \
