#!/bin/bash

# TODO we can eventually add auth via this route.
echo "${TOKEN}" > ./secret.txt
exec /usr/bin/supervisord
