pipeline {
    agent {
        docker {
            image 'node:14' 
            args '-u root -p 3000:3000'
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'  
            }
        }
        // Add more stages for testing, deploying, etc.
    }
}

