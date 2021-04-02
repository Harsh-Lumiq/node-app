pipeline {
	agent {
		docker {
			image 'node:latest'
			args '-p 9000:9000'
		}
	}
	environment {
		CI = 'true'
	}
	stages {
	
		stage('Build'){
			steps {

				dir(/node-app) {
					docker build -t jen-ub-image .
				}
			}
		}
		stage('Run'){
			steps {
				dir(/node-app) {
					docker run -d --name jen-ub1 -p 9000:9000 jen-ub-image
				}
			}	
		}
	}						
}
