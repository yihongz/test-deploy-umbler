#!/usr/bin/env bash

mkdir -p ~/.ssh
echo -e "${SSH_KEY//_/\\n}" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa

ssh-keyscan -p 9922 -t rsa hml-zapisp-com-br.umbler.net 2>&1 >> ~/.ssh/known_hosts