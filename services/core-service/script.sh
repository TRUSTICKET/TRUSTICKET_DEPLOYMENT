docker-compose stop
docker-compose rm -f
docker rmi sjh9708/trusticket-core-service:latest
docker-compose up -d