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
    stage('Build') {
      steps{
        script {
          dockerImage = docker.build registry // + ":$BUILD_NUMBER" 
        }
      }
    }
    // Run docker image 
    stage('Run Test){
      steps{
          script {
              sh 'docker run -it -d -p 30000:3000 kawinpromsopa/node-app // :$BUILD_NUMBER
          }
      }
    }
    // Sent docker images to Registry 
    stage('Push'){
      steps{
         script {
            docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
            sh 'bash ./clean.sh'
          }
        }
      }  
    }
    // Run Docker Compose
    stage('Compose'){
      steps{
        script {
          sh 'docker-compose up -d'
        }
      }
    }
  }
}

