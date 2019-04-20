pipeline {
  agent any
  triggers {
    issueCommentTrigger('.*pipeline please rebuild.*')

    }
  
  stages {
    stage('shell print') {
      steps {
        sh 'echo "srinivas raja pasupuleti is a bad boy"'
      }
    }
  }
}
