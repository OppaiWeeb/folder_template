pipeline {
    agent none
    stages {
        stage('Build') {
            agent { docker 'bash' }
            steps {
                sh 'cat README.md'
            }
        }
    }
}
