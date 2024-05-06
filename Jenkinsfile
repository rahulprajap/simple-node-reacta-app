pipeline {
    docker {
        image:'node:21-alpine'
        arg:"-p 3000:3000"
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