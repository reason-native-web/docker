#!/bin/bash

echo Building ocaml image with OCaml version $1
docker build --rm -f "Dockerfile.ocaml" --build-arg OCAML_VERSION=$1 -t reasonnative/ocaml:$1 "."
echo Pushing image...
docker push reasonnative/ocaml:$1

echo Building web image with OCaml version $1
docker build --rm -f "Dockerfile.web" --build-arg OCAML_VERSION=$1 -t reasonnative/web:$1 "."
echo Pushing image...
docker push reasonnative/web:$1
