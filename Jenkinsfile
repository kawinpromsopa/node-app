#!/usr/bin/env groovy

pipeline {
  environment {
     registry = 'kawinpromsopa/node-app'
     registryCredential = 'dockerhub'
     dockerImage = ''
  }
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Starting build docker images..'
		sh 'docker build . -t kawinpromsopa/node-app:1.0'
            }
        }
        stage('Starting test docker run') {
            steps {
                echo 'Starting test docker run'
		sh 'docker run -it -d -p 30000:3000 kawinpromsopa/node-app:1.0'
            }
        }
        stage('Pushing docker images to Hub registry') {
            steps {
                echo 'Deploying....'
		docker.withRegistry( '', registryCredential ) }
		dockerImage.push()
            }
        }
    }
}
