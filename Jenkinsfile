pipeline {
  agent any
  triggers {
        pollSCM ('H */4 * * 1-5')
    }
  
  stages {
    stage('shell print') {
      steps {
        sh 'echo "srinivas raja pasupuleti"'
      }
    }
  }
}
