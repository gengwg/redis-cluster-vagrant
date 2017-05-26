#!/usr/bin/env bash

set -ex

# create cluster
yes yes | \
/opt/redis/bin/redis-trib.rb create --replicas 1 \
127.0.0.1:7379 \
127.0.0.1:7479 \
127.0.0.1:7579 \
127.0.0.1:7679 \
127.0.0.1:7779 \
127.0.0.1:7879 \

# disable protected mode
for p in $(seq 7379 100 7879); do
  /opt/redis/bin/redis-cli -p $p CONFIG SET protected-mode no && /opt/redis/bin/redis-cli -p $p CONFIG REWRITE
done

