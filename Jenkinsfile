pipeline {
    agent {
        docker {
            image :"node:21-alpine"
            arg "-p 3000:3000"
        }
    }
    
    environment {
        PATH = "$PATH://home/rahul/.nvm/versions/node/v21.1.0/bin/"
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
                sh 'npm build'
                sh 'npm start'
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
        // stage('Deliver') {
        //     steps {
        //         sh './jenkins/scripts/deliver.sh'
        //         input message: 'Finished using the web site? (Click "Proceed" to continue)'
        //         sh './jenkins/scripts/kill.sh'
        //     }
        // }
    }
}