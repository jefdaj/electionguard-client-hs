#!/usr/bin/env bash

# set -x

docker pull electionguard/electionguard-web-api:latest -q

ensure-running() {
  # based on https://stackoverflow.com/a/38576401
  name="$1"; mode="$2"; port="$3"
	echo
	if [ ! "$(docker ps -q -f name=$name)" > /dev/null ]; then
    if [ "$(docker ps -aq -f status=exited -f name=$name)" ]; then
      echo "$name exited. cleaning up..."
      docker rm $name &> /dev/null
    fi
    echo "starting ${name}..."
    docker run -d -p $port:8000 --env API_MODE="$mode" --name "$name" electionguard/electionguard-web-api:latest
  else
    echo "$name is already running"
  fi
  echo "go here for api docs: http://localhost:${port}/docs"
}

ensure-running electionguard-guardian guardian 8001
ensure-running electionguard-mediator mediator 8002
