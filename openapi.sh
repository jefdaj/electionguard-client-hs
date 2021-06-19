#!/usr/bin/env bash

# TODO /usr/bin/env nix-shell
# TODO nix-shell -i bash -p haskellPackages.openapi3-code-generator
export PATH=/nix/store/41vqiis2nvmn0z5nlv97pi8z4yvpr4h2-openapi3-code-generator-0.1.0.6/bin:$PATH

# TODO remove
set -x

generate-api-module() {
  json="$1"; pkgname="$2"; modname="$3"; outdir="$4"
  openapi3-code-generator-exe \
    --output-dir  "$outdir" \
    --force \
    --package-name "$pkgname" \
    --module-name "$modname" \
    --convert-to-camel-case \
    "$json" 2>&1 | tee "${outdir}.log"
}

generate-api-module generated/guardian.json "electionguard-guardian-api" "ElectionGuard.API.Guardian.Generated" "generated/guardian"
generate-api-module generated/mediator.json "electionguard-mediator-api" "ElectionGuard.API.Mediator.Generated" "generated/mediator"
