pipeline {
    agent {
        label 'AGENT-1'
    }
    options {
        buildDiscarder(logRotator(numToKeepStr: '2'))
    }
    
    parameters {
        string(name: 'PERSON', defaultValue: 'Muneer', description: 'Your name')
        string(name: 'AGE', defaultValue: '33', description: 'Your age')
        booleanParam(name: 'SEX', defaultValue: true, description: 'Male?')



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
                sleep 10
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
