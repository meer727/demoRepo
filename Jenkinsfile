pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = "eu-north-1"
    }

    stages {

        stage('Terraform Init') {
            steps {
                dir('terraform-ec2') {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir('terraform-ec2') {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir('terraform-ec2') {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
