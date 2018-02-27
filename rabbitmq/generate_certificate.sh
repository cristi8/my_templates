#!/bin/bash

mkdir -p certificate
openssl req -x509 -newkey rsa:4096 -sha256 -nodes -keyout certificate/cert.key -out certificate/cert.crt -subj "/CN=example.com" -days 36500

cat certificate/cert.crt certificate/cert.key > certificate/cert.pem
