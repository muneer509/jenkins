// pipeline {
//     agent {
//         label 'AGENT-1'
//     }
//     options {
//         buildDiscarder(logRotator(numToKeepStr: '2'))
//     }
    
//     parameters {
//         string(name: 'PERSON', defaultValue: 'Muneer', description: 'Your name')
//         string(name: 'AGE', defaultValue: '33', description: 'Your age')
//         booleanParam(name: 'SEX', defaultValue: true, description: 'Male?')



//     }

//     stages {
//         stage('Build') {
//             steps {
//                 echo 'Building...'
//                 sleep 10
//             }
//         }
    
//         stage('Printing Parameters')
//         steps {
//             echo 'Hello ${param.PERSON}'
//             echo 'Age is: ${param.AGE}'
//             echo 'Sex is: ${param.sex}'

//         }
      
//     }
//     post {
//         always{
//             deleteDir()
//         }
//     }
// }

pipeline {
    agent {
        label 'AGENT-1'
    }
    triggers {
        cron('H/1 * * * *')   // Run every minute
    }


    options {
        buildDiscarder(logRotator(numToKeepStr: '3'))
        disableConcurrentBuilds()
        retry(1)
    }

    parameters {
        string(name: 'PERSON', defaultValue: 'John Doe', description: 'Your name')
        string(name: 'AGE', defaultValue: '25', description: 'Your age')
        booleanParam(name: 'SEX', defaultValue: true, description: 'Male?')
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..........'
                sleep 5
            }
        }

        stage('Printing Parameters') {
            steps {
                echo "Hello ${params.PERSON}"
                echo "Age is: ${params.AGE}"
                echo "Sex is: ${params.SEX}"
            }
        }
    }

    post {
        always {
            deleteDir()
        }
    }
}
