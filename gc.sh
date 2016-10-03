#!/bin/bash -xe

docker-compose run dockergc \
&& docker-compose rm -f

