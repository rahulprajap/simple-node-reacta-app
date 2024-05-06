pipeline {
    agent any // You can also use 'agent none' if you want to define an agent later in the stages

    stages {
        stage('Build') {
            agent {
                docker {
                    image 'node:20.11.1-alpine3.19'
                    args '-u root -p 3000:3000' // Run Docker container as root to install dependencies
                }
            }
            steps {
                sh 'npm install' // Install Node.js dependencies
                sh 'npm run build' // Build the React application
            }
        }
        // Add more stages for testing, deploying, etc.
    }
}
