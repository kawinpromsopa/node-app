#!/usr/bin/env groovy

node {
    checkout scm

    def customImage = docker.build("kawinpromsopa:${env.BUILD_ID}")

    customImage.inside {
    }
}

