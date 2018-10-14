#!/usr/bin/env groovy

pipeline {
    checkout scm  
         
            def customImage = docker.build("my-image:${env.BUILD_ID}")

            customImage.inside {
                echo 'build docker images'
                sh 'docker build . -t kawinpromsopa/node-app:1.0'
            }
    }
