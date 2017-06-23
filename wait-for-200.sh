#!/bin/bash
echo 'Waiting for HTTP 200 from' $URL
until $(curl --output /dev/null --silent --head --fail $URL); do
  printf '.'
  sleep 5
done
echo 'OK'
