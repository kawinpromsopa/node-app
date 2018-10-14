#!/usr/bin/env groovy

pipeline {
    environment {
    registry = 'kawinpromsopa/node-app'
    registryCredential = 'dockerhub'
    dockerImage = ‘’
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
	      script {
                echo 'Starting test docker run'
	        dockerImage = docker.build registry + ':$BUILD_NUMBER'
            }
        }
        stage('Pushing docker images to Hub registry') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
