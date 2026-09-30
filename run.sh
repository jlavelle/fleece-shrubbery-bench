#!/usr/bin/env bash
set -euo pipefail

for config in ${@:-before after}; do
  stack --stack-yaml "$config.yaml" build json-fleece-core
  echo "== $config"
  stack --stack-yaml "$config.yaml" exec -- \
    ghc -O0 -fforce-recomp -dshow-passes -outputdir ".build/$config" -c Bench.hs \
    +RTS -s -M2g -RTS 2>&1 \
    | grep -E -A1 'Desugar \(before optimization\)|maximum residency'
done
