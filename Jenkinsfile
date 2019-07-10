pipeline {
  environment {
    registry = "test02.osdemo.com:5000/srini_org/"
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
	    stage('Docker build & push') {
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
	    stage('Docker image cleaning') {
	      steps {
		  sh 'echo "unused docker image pruning"'
		  sh "docker rmi $registry$image_name"
	        }
	     }	 
	    stage('oc connection') {
	      steps {
		  sh 'echo "Connecting to OCP.."'
		  sh "docker run test02.osdemo.com:5000/ocimage login https://console.master.192.168.1.8.nip.io:8443 --token=I-XKQkMnZbv2QI0sa-Gjis2GQcKbV0KDB7aHw_8IrCY --insecure-skip-tls-verify=true"
		  sh "docker run test02.osdemo.com:5000/ocimage get pods -n persistent-storage"
	        }
	     }	    
 }
}
