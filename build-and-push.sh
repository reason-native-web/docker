echo Building esy docker with version $1
docker build --rm -f "Dockerfile.esy" --build-arg ESY_VERSION=$1 -t reasonnative/esy:$1 "."
echo Pushing image...
docker push reasonnative/esy:$1

echo Building ocaml image with OCaml version $2
docker build --rm -f "Dockerfile.ocaml" --build-arg OCAML_VERSION=$2 -t reasonnative/ocaml:$2 "."
echo Pushing image...
docker push reasonnative/ocaml:$2

echo Building web image with OCaml version $2
docker build --rm -f "Dockerfile.web" --build-arg OCAML_VERSION=$2 -t reasonnative/web:$2 "."
echo Pushing image...
docker push reasonnative/web:$2
