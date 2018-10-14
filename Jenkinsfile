#!/usr/bin/env groovy

node {
    checkout scm

    def customImage = docker.build("kawinpromsopa-myimages:${env.BUILD_ID}", "-f ${dockerfile} ./dockerfiles")

    customImage.inside {
        sh 'docker build . -t kawinpromsopa/node-app:1'
    }
}

