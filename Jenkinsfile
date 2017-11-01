pipeline {
  agent {
    docker {
      image 'maven:3-alpine'
      args '-v $HOME/.m2:/root/.m2'
    }
  }
  environment {
        SLACK_CHANNEL = "#testing"
        GITHUB_ORGANISATION = 'ukncsc'
        GITHUB_TOKEN = credentials('buildbot-github-token')
        PACKAGE_NAME = "Needs to be overridden"
        PACKAGE_VERSION = "0.0.0"
    }
    options {
        disableConcurrentBuilds()
        timestamps()
        timeout(time: 5, unit: 'MINUTES')
    }
  stages {
    stage('Build') {
      steps {
        sh 'echo $GITHUB_TOKEN'
        sh 'echo $PACKAGE_NAME'
        input 'Pause'
      }
    }
  }
}
