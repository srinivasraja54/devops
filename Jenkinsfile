pipeline {
  agent any
  stages {
    stage('Docker build') {
      steps {
	sh "docker build -f Dockerfile -t test02.osdemo.com:5000/httpd-image ."
	sh "docker image push test02.osdemo.com:5000/http-image"
        sh 'echo "successfully built docker image"'
      }
    }
  }
}
