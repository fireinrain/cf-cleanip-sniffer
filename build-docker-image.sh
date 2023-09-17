docker build -t cf-cleanip-sniffer:v1.0.0 .

#tag name
docker tag cf-cleanip-sniffer:v1.0.0 liuzy/cf-cleanip-sniffer:latest

# push to docker hub
docker push liuzy/cf-cleanip-sniffer:latest

# clean docker images
# shellcheck disable=SC2006
imagesId=`docker images | grep cf-cleanip-sniffer | awk '{print $3}'`
echo $imagesId
for str in $imagesId
do
  docker rmi $str -f
done