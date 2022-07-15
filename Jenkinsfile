pipeline {
    agent none
    stages {
        stage('Build') {
            agent { docker 'bash' }
            steps {
                sh 'cat README.md'
            }
        }
        stage('Check norme') {
            agent {docker 'epitechcontent/epitest-docker:latest'}
            steps {
                sh 'echo "hello world"'
                }
        }
    }
}
