#!/bin/sh
read -p "Enter the app name which you want to deploy! : " name
if [ $(docker ps -f name=${name}_blue -q) ]
then
    ENV="${name}_green"
    OLD="${name}_blue"
else
    ENV="${name}_blue"
    OLD="${name}_green"
fi

echo "Starting "$ENV" container"
#docker-compose --project-name=$ENV up -d --no-deps --build
docker-compose --verbose  up -d --no-deps --build $ENV

echo "Waiting for application to be up..."
sleep 60s

echo "Stopping "$OLD" container"
#docker-compose --project-name=$OLD stop
docker-compose stop $OLD
