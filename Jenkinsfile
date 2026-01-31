pipeline {
    agent {
        label 'AGENT-1'
    }
    options {
        timeout(time:10, unit: 'SECONDS')

    }

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sleep 15
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
            }
        }
    }
    post {
        always{
            deleteDir()
        }
    }
}