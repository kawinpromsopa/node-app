#!/usr/bin/env groovy

pipeline {

  // RegistryCredential Environment  
  environment {
    registry = "kawinpromsopa/node-app"
    registryCredential = 'DockerHub'
    dockerImage = ''
  }

  agent any
  stages {
    // Build images from dockerfile with Jobs Jenkinstag.Build
    stage('Build docker image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER" 
        }
      }
    }
    // Run docker image 
    stage('Run test image'){
      steps{
          script {
              sh 'docker run -it -d -p 30000:3000 kawinpromsopa/node-app:$BUILD_NUMBER'
              sh 'bash ./clean.sh'
          }
      }
    }
    // Sent docker images to Registry 
    stage('Push Image') {
      steps{
         script {
            docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
  }
}

