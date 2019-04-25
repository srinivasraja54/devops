pipeline {
  agent any
  triggers {
     pollSCM('H */4 * * 1-5') 
    }
  stages {
    stage('Docker build') {
      steps {
	sh "buildah bud -f Dockerfile -t httpd-image ."
        sh 'echo "successfully built docker image"'
      }
    }
  }
}
