#!/bin/bash

docker run -it --rm  \
           -v /var/run/docker.sock:/var/run/docker.sock \
           -v /etc:/etc  \
           scortum/croned-docker-gc \
           bash

