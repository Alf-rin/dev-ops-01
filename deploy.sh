#!/bin/bash
docker-compose up -d
docker login -u ar8888  -p dckr_pat_NqD6cUw-P2zyV9GQ715-Y8hLK_I

if [[ $GIT_BRANCH == "origin/dev" ]]; then
       sh'chmod +x build.sh'
       sh'./build.sh'

        docker tag test ar8888/dev
        docker push vennilavan/dev

if [[ $GIT_BRANCH == "origin/master" ]]; then
        sh'chmod +x build.sh'
        sh'./build.sh'

        docker tag test ar8888/prod
        docker push vennilavan/prod

else
        echo "failed"
fi
