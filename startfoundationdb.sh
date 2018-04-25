#!/bin/bash

IP=$(hostname --ip-address)
cd /etc/foundationdb/
cat foundationdb.conf | sed "s/auto:\$ID/${IP}:4500/" | sed 's/= public/= 0.0.0.0:4500/' > another.conf
mv another.conf foundationdb.conf

service foundationdb start
