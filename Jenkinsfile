pipeline{
	agent any
	environment{
		DOCKER_IMAGE = 'hello-world-java:latest'
	}
		stages{
			stage('Checkout'){
				steps{
				checkout scm

				}
			}
			stage('Build'){
				steps{
				sh 'javac helloworld.java'
				}	
			}
			stage('Package'){
				steps{
				sh 'jar cf helloworld.jar helloworld.class'
				}
			}
			stage('Docker Build'){
				steps{
				 sh """
					docker build -t $DOCKER_IMAGE . """
				}
			}
			
		}
	post{
		success{
		echo 'build completed successfully.'

	}
		failure{
		echo 'build failed.'
}
}
	



















}
