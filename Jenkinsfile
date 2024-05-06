pipeline {
    agent {
           docker {
             image 'node:20.11.1-alpine3.19'
            arg:'-p 3000:3000' }
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

        // stage('Deliver') {
        //     steps {
        //         sh './jenkins/scripts/deliver.sh'
        //         input message: 'Finished using the web site? (Click "Proceed" to continue)'
        //         sh './jenkins/scripts/kill.sh'
        //     }
        // }
    }
}