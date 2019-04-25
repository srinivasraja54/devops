pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {	    
        checkout scm
      }
    }   
    stage('Docker build') {
      steps {
	sh "buildah bud -f Dockerfile -t httpd-image ."
        sh 'echo "successfully built docker image"'
      }
    }
  }
}
