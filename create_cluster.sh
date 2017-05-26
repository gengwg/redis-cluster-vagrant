#!/usr/bin/env bash

set -ex

# create cluster
yes yes | \
/opt/redis/bin/redis-trib.rb create --replicas 1 \
192.168.33.10:7379 \
192.168.33.10:7479 \
192.168.33.10:7579 \
192.168.33.10:7679 \
192.168.33.10:7779 \
192.168.33.10:7879 \

