pipeline {
    agent {
        label 'agent-1'
    }
    options {
        timeout (time: 30, unit: 'MINUTES')
        disableConcurrentBuilds()
        ansiColor('xterm')
    }
    stages {
        stage ("init"){
            steps {
                sh '''
                 cd 01-vpc
                 terraform init -reconfigure
                '''
                 
            }
        }
        stage ("plan") {
            steps {
                sh 'echo This is Test'
            }
        }
        stage ('apply') {
            steps {
                sh 'echo This is Deploy'
            }
        }
    }
    post {
        always {
            echo 'I will always say Hello again!'
        }
        success {
            echo 'I will run when pipeline is success'
        }
        failure {
            echo 'I will run when pipeline is failure'
        }
    }
}