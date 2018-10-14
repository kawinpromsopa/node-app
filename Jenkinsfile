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