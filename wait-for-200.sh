#!/bin/bash
until $(curl --output /dev/null --silent --head --fail $URL); do
  printf '.'
  sleep 5
done
