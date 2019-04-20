pipeline {
  agent any
  triggers {
     pollSCM('/2 * * * ') 
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
