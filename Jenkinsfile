pipeline {
  environment {
    registry = "test02.osdemo.com:5000"
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
	//def http-image3 = docker.build("http-image3:${env.BUILD_ID}")'
       docker.withRegistry( 'https://' + registry ) {
		    def buildName = registry + ":$BUILD_NUMBER"
			newApp = docker.build buildName
			newApp.push()
       }	      
//http-image3.push()
    }
  }
}
