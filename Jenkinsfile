pipeline {
  agent any
  triggers {
        properties([pipelineTriggers([[$class: 'GitHubPushTrigger'], pollSCM('H/15 * * * *')])])
        when { branch 'master' }
    }
  
  stages {
    stage('shell print') {
      steps {
        sh 'echo "srinivas raja pasupuleti is a bad boy"'
      }
    }
  }
}
