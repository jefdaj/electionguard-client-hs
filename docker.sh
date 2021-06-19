#! /usr/bin/env nix-shell
#! nix-shell -i bash -p jq curl

# TODO any sense forcing docker here when it already needs to be running?

# set -x

docker pull electionguard/electionguard-web-api:latest -q

ensure-container-running() {
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

ensure-container-running electionguard-guardian guardian 8001
ensure-container-running electionguard-mediator mediator 8002

ensure-json-generated() {
  name="$1"; port="$2"
  filename="generated/${name}.json"
  [[ -a "$filename" ]] && echo "$filename already exists" && return
  mkdir -p "$(dirname "$filename")"
  curl -s "http://localhost:${port}/api/v1/openapi.json" | jq . > "$filename"
}

# TODO auto-update when the api changes? or pin the docker container?
echo
ensure-json-generated guardian 8001
ensure-json-generated mediator 8002
