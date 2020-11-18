#!/bin/sh

docker-compose build
docker-compose --verbose up -d
#status=$(docker ps | grep -i nginx | grep -i up)

echo "waiting for nginx to be up after health check of depending services"
sleep 120

if [ $(docker ps | grep -i nginx | grep -i up) ]

then

#echo $status

  docker-compose stop app_green
  docker-compose stop app1_green

else 

  echo "Please wait ! services are taking time to start"
  sleep 120

  docker-compose stop app_green
  docker-compose stop app1_green

fi


