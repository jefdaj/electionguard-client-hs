#! /usr/bin/env nix-shell
#! nix-shell -i bash -p jq curl

# TODO any sense forcing docker here when it already needs to be running?

# set -x

docker pull electionguard/electionguard-web-api:latest -q

ensure-container() {
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
  echo "go here for details of the API:"
	echo "  http://localhost:${port}/docs"
	echo "  http://localhost:${port}/redoc"
}

ensure-container electionguard-guardian guardian 8001
ensure-container electionguard-mediator mediator 8002

ensure-json() {
  name="$1"; port="$2"
  filename="openapi-${name}.json"
  [[ -a "$filename" ]] && echo "$filename already exists" && return
  curl -s "http://localhost:${port}/api/v1/openapi.json" | jq . > "$filename"
}

# TODO auto-update when the api changes? or pin the docker container?
echo
ensure-json guardian 8001
ensure-json mediator 8002
