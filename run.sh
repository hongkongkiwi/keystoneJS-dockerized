#!/bin/sh

# -i max enables load-balancer and cluster features
pm2 start /app/keystone.js -i max --name "keystoneJS" --no-daemon
