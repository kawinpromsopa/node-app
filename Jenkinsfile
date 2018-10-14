#!/usr/bin/env groovy

node {
    checkout scm

    docker.withRegistry('https://hub.docker.com', 'dockerhub') {
    def customImage = docker.build("kawinpromsopa:${env.BUILD_ID}")
    customImage.inside {
        customImage.push()
    }
}
}

// # def customImage = docker.build("kawinpromsopa:${env.BUILD_ID}")
// build docker image name is : kawinpromsopa, To and ${env.BUILD_ID} is a number build task in jenkins.