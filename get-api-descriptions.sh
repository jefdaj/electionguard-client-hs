#! /usr/bin/env nix-shell
#! nix-shell -i bash -p jq curl

# TODO take these on the command line?
# TODO complain if docker container not running
API_MODE="guardian"
API_PORT=8001

ensure-json-generated() {
  name="$1"; port="$2"
  filename="openapi/${name}.json"
  [[ -a "$filename" ]] && echo "$filename already exists" && return
  mkdir -p "$(dirname "$filename")"
  curl -s "http://localhost:${port}/api/v1/openapi.json" | jq . > "$filename"
}

ensure-json-generated $API_MODE $API_PORT
