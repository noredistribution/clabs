#!/usr/bin/env bash

set +e
echo "alias sw1='sshpass -p arista ssh -o \"StrictHostKeyChecking no\" arista@172.100.100.105'" >> ~/.zshrc
echo "alias sw2='sshpass -p arista ssh -o \"StrictHostKeyChecking no\" arista@172.100.100.106'" >> ~/.zshrc

