#!/usr/bin/env groovy

node {
    checkout scm

    def customImage = docker.build("my-image:${env.BUILD_ID}")

    customImage.inside {
        sh 'docker build . -t kawinpromsopa/node-app:1.0'
    }
}

