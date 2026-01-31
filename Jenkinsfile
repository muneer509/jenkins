pipeline {
    agent {
        label 'AGENT-1'
    }
    options {
        timeout(time:10, unit: 'SECONDS')
        buildDiscarder(logRotator(numToKeepStr: '3'))
        disableConcurrentBuilds() 
        retry(4)

    }

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sleep 2
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                error 'Fialed'
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