pipeline {
    agent {
        docker {
            image 'node:21-alpine'
            args ' -u root -p 6000:6000'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm  install'
                sh 'npm start'                  
            }
        }
    }
}
