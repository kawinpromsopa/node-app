#!/usr/bin/env groovy

pipeline {
  environment {
    registry = "kawinpromsopa/node-app"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
  stages {

    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }

    stage('Run image'){
      steps{
          script {
              sh 'docker run -it -d -p 30000:3000 kawinpromsopa/node-app:$BUILD_NUMBER '
          }
      }
    }
    
    stage('Deploy Image') {
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
