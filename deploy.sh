#!/bin/bash
docker login -u alfrin18  -p dckr_pat_1dpAYO5amUlhcRCLWZZRDmdFHrk

if [[ $GIT_BRANCH == "origin/dev" ]]; then
       sh 'chmod +x build.sh'
       sh './build.sh'

        docker tag test alfrin18/dev
        docker push alfrin18/dev

elif [[ $GIT_BRANCH == "origin/master" ]]; then
        sh 'chmod +x build.sh'
        sh './build.sh'

        docker tag test alfrin18/prod
        docker push alfrin18/prod

else
        echo "failed"
fi 
