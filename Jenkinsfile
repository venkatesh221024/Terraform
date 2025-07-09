pipeline {
  agent any

  environment {
    AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
    AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
    TF_VAR_region         = 'us-east-1' // Example Terraform variable
  }

  stages {
    stage('Checkout') {
      steps {
        git url: 'https://github.com/venkatesh221024/Terraform.git', branch: 'main'
      }
    }

    stage('Terraform Init') {
      steps {
        sh 'terraform init'
      }
    }

    stage('Terraform Validate') {
      steps {
        sh 'terraform validate'
      }
    }

    stage('Terraform Plan') {
      steps {
        sh 'terraform plan -out=tfplan'
      }
    }

    stage('Manual Approval') {
      steps {
        input message: 'Do you want to apply the Terraform changes?'
      }
    }

    stage('Terraform Apply') {
      steps {
        sh 'terraform apply -auto-approve tfplan'
      }
    }
  }

  post {
    failure {
      echo 'Pipeline failed!'
    }
    success {
      echo 'Terraform pipeline completed successfully.'
    }
  }
}
