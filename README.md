![Build and Publish to Docker Hub](https://github.com/reason-native-web/docker/workflows/Build%20and%20Publish%20to%20Docker%20Hub/badge.svg)

# docker

This repos purpose is to provide prebuilt docker images that can be a good starting point for esy development.
We prebuild some packages to shorten the build cycle.

## Available images:

`reasonnative/esy:<esy-version>` includes just esy and some good to have tools for building.

`reasonnative/ocaml:<ocaml-version>` extends `esy` with a prebuilt OCaml for faster building from the cache

`reasonnative/web:<ocaml-version>` extends `ocaml` with `dune` and `morph_server_http` which in turn includes `httpaf` and `ssl`
