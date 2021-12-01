#!/bin/bash

docker run --rm -it --mount source=/var/run/docker.sock,target=/var/run/docker.sock,type=bind supabase-docker-reproduction