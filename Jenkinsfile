#!/usr/bin/env groovy

node {
    checkout scm

    def customImage = docker.build("kawinpromsopa-myimages:${env.BUILD_ID}, "-f ${dockerfile} ./home/ubuntu/devops-hello-world/dockerfiles")

    customImage.inside {
        sh 'docker build . -t ${dockerfile}/${env.BUILD_ID}'
    }
}

