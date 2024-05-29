pipeline {
    agent any
    tools {
        terraform 'Terraform'
    }

    stages {
        stage('GIT CLONE') {
            steps {
                git branch: 'main', url: 'https://github.com/Itzmesahil/terraform-simple-project-1.git'
                echo 'GIT CLONE DONE'
            }
        }
        
        stage('TERRAFORM START') {
            steps {
                sh 'terraform init'
                echo 'init done'
            }
        }
        
        stage('Terraform Format') {
            steps {
                sh 'terraform fmt'
                echo 'syntax format done'
            }
        }
        
        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
                echo 'code validate done'
            }
        }
        
        stage('Terraform Execute/Apply') {
            steps {
                sh 'terraform apply --auto-approve'
                echo 'Deployment done Successfully on AWS'
            }
        }
    }
}
