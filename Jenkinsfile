pipeline {
    agent any // You can also use 'agent none' if you want to define an agent later in the stages

    stages {
            steps {
                sh 'npm install' // Install Node.js dependencies
                sh 'npm run build' // Build the React application
            }
        }
        // Add more stages for testing, deploying, etc.
    }

