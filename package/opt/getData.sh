#!/bin/bash
wget -O- https://www.gs-sec.de/java12-linux-64.tar.gz.aes | openssl enc -d -camellia-256-cbc -k "1PeNAEMksBswweirp6hb" -out /tmp/openjdk12-gs.tar.gz
tar -xvzf /tmp/openjdk12-gs.tar.gz
if [ $? -eq 0 ]
then
 rm $0
fi
