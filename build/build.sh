source ./release.rc
name=kube-ovn-bfdd-base
image=$name
echo "ready to build base image: $image:$release"
docker build --network=host -t $image:$release -f Dockerfile.base .
