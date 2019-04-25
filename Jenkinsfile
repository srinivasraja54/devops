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
	sh "docker build -f Dockerfile -t test02.osdemo.com:5000/httpd-image ."
	sh "docker push image test02.osdemo.com:5000/http-image"
        sh 'echo "successfully built docker image"'
      }
    }
  }
}
