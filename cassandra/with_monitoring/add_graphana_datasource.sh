#!/bin/bash

curl 'http://admin:admin@127.0.0.1:3000/api/datasources' -X POST \
    -H 'Content-Type: application/json;charset=UTF-8' \
    --data-binary '{"name":"graphite","type":"graphite","url":"http://graphite:80",
    "access":"proxy","isDefault":true,"basicAuth":true,"basicAuthUser":"guest","basicAuthPassword":"guest"}'
