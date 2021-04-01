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
		stage('Pull') {
			steps {
				sh 'git clone https://github.com/Harsh-Lumiq/node-app.git'
			}
		}
		stage('Build'){
			steps {
				dir('/node-app') {
					sh 'npm install'
				}
			}
		}
		stage('Test'){
			steps {
				dir('/node-app') {
					sh './node_modules/.bin/mocha ./test/test.js'
				}
			}
		}
		stage('Run'){
			steps {
				dir('/node-app') {
					sh 'node index.js'
				}
			}	
		}
	}						
}
