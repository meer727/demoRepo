pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = "eu-north-1"
        AWS_ACCESS_KEY_ID     = credentials('aws-creds')
        AWS_SECRET_ACCESS_KEY = credentials('aws-creds')
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
