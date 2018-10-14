#!/usr/bin/env groovy

pipeline {

    environment {
        Registry = "kawinpromsopa/node-app/"
        RegistryCredential = 'dockerhub' 
    }
    agent any
    stage ('Bulding image'){
        steps{
            script {
                dockerImages = docker.build docker.build Registry + "$BUILD_ID}"
            }
        }
        stage ('Deploy Image') {
            steps {
                script {
                    docker.withRegistry('',RegistryCredential ) {
                        dockerImages.push()
                    }
                }
            }
        }

// # def customImage = docker.build("kawinpromsopa:${env.BUILD_ID}")
// build docker image name is : kawinpromsopa, To and ${env.BUILD_ID} is a number build task in jenkins.