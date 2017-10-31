pipeline {
  agent {
    docker {
      image 'maven:3-alpine'
      args '-H 172.20.10.2:1234'
    }
    
  }
  stages {
    stage('Build') {
      steps {
        sh 'mvn -B'
      }
    }
  }
}