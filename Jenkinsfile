pipeline {
    agent {
        docker {
            image 'node:14' // Specify the Node.js Docker image and version
            args '-u root' // Run Docker container as root to install dependencies
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install' // Install Node.js dependencies
                sh 'npm run build' // Build the React application
            }
        }
        // Add more stages for testing, deploying, etc.
    }
}
