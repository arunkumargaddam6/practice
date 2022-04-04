node {
    agent any

    stages {
        stage('git checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'e8672c8b-c0c3-4776-b52c-ee5e0e4b33f9', url: 'https://github.com/arunkumargaddam6/practice.git']]])
            }
        }
        stage('Terraform init') {
            steps {
                sh 'terraform init'
             }
        }
         stage('apply') {
            steps {
                sh 'terraform apply --auto-approve'
             }
        }
        
    }
}
