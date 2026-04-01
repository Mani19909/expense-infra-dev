pipeline {
    agent {
        label 'agent-1'
    }
    options {
        timeout (time: 30, unit: 'MINUTES')
        disableConcurrentBuilds()
        ansiColor('xterm')
    }
    parameters {
        choice(name: 'action', choices: ['apply' , 'Destroy'], description: 'pick something')
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
                sh '''
                cd 01-vpc
                terraform plan
                '''
            }
        }
        stage ('apply') {
            input {
                message "should we continus?"
                ok "yes, we should."
            }
            steps {
                sh '''
                cd 01-vpc
                terraform apply -auto-approve
                '''
            }
        }
    }
    post {
        always {
            echo 'I will always say Hello again!'
            deleteDir()
        }
        success {
            echo 'I will run when pipeline is success'
        }
        failure {
            echo 'I will run when pipeline is failure'
        }
    }
}