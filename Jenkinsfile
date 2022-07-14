pipeline {
    agent none
    stages {
        stage('Build') {
            agent { docker 'python:3.10-alpine' }
            steps {
                sh 'python --version'
            }
        }
    }
}
