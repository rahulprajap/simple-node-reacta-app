pipeline {
    agent {
        docker { image 'node:20.11.1-alpine3.19' }
    }
    stages {
        stage('Build And Run') {
            step{
                sh 'npm install'
                sh 'npm run build'
                sh 'npm run start'
            }
        }
    }
}