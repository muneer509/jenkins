pipeline {
    agent {
        label 'AGENT-1'
    }
    options {
    
        buildDiscarder(logRotator(numToKeepStr: '3'))
        disableConcurrentBuilds() 
        retry(1)


    }
    parameters{
        string(name: 'PERSON')
        text(name: 'AGE')
        booleanParam(name: 'sex' )
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sleep 2
            }
        }
        stage('Printing Parameters')
        steps {
            echo 'Hello ${param.PERSON}'
            echo 'Age is: ${param.AGE}'
            echo 'Sex is: ${param.sex}'

        }
      
    }
    post {
        always{
            deleteDir()
        }
    }
}