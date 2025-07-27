pipeline {
    agent any

    stages {
        stage('Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Plan') {
            steps {
                sh 'terraform plan -var-file="terraform.tfvars"'
            }
        }

        stage('Apply') {
            steps {
                input 'Approve to apply changes?'
                sh 'terraform apply -auto-approve -var-file="terraform.tfvars"'
            }
        }
    }
}
