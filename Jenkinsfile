pipeline {
  agent any
  triggers {
     pollSCM('/2 * * * ') 
    }
  
  stages {
    stage('shell print') {
      steps {
        sh 'echo "srinivas raja pasupuleti is a bad boy"'
      }
    }
  }
}
