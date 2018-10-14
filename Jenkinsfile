#!/usr/bin/env groovy

pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Starting build docker images..'
		sh 'docker build . -t node-app:v1'
            }
        }
        stage('Starting test docker run') {
            steps {
                echo 'Starting test docker run'
		sh 'docker run -it -d -p 30000:3000 kawinpromospa:node-app'
            }
        }
        stage('Pushing docker images to Hub registry') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
