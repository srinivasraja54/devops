pipeline {
  environment {
    registry = "test02.osdemo.com:5000/"
    image_name = "http-image2" + ":$BUILD_NUMBER"
   }
  agent any
  stages {
    stage('Dockerfile print') {
      steps {
	sh 'echo "dockerfile print is initialising"'
	sh 'cat Dockerfile'
      }
    }
    stage('Docker build') {
      steps {
      script {
       docker.withRegistry( 'https://' + registry ) {
		    def buildName = registry + image_name
			newApp = docker.build buildName
			newApp.push()
       }
       }	      
      }
    }
  }
}
