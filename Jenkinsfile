pipeline {
  agent any
  triggers {
     pollSCM('H */4 * * 1-5') 
    }
  stages {
  stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */
      checkout scm
  }
    stage('Docker build') {
      steps {
	sh "buildah bud -f Dockerfile -t httpd-image ."
        sh 'echo "successfully built docker image"'
      }
    }
  }
}
