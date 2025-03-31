pipeline{
    agent any

    environment {
        REPO_URL = "https://github.com/Dev-NanAyeLi/python-app.git"
        APP_DIR = "my-python-app"
        IMAGE_NAME = "python-app"
        CONTAINER_NAME = "python-app-container"
        APP_PORT = "5000"
    }

    stages {
        stage('Checkout Code'){
            steps{
                script {
                    git branch: 'main',
                    url: REPO_URL
                    // checkout scm # Clones respository
                }
            }
        }

        stage('Set Up Python Environment') {
            steps {
                script {
                    sh 'python3 -m venv venv'
                    sh 'source venv/bin/activate && pip install -r requirement.txt'
                }
            }
        }

        // stage('Run Tests') {
        //     steps {
        //         script {
        //             sh 'source venv/bin/activate && pytest tests/'
        //         }
        //     }
        // }

        stage('Build Docker Image'){
            steps {
                script{
                    sh "docker build -t $IMAGE_NAME ."
                }
            }
        }

        stage('Deploy to Local Docker'){
            steps{
                script{
                    sh 'chmod +x deploy.sh && ./deploy.sh'
                }
            }
        }
    }

    post{
        success {
            echo "Buiild & Deployment Successful!"
        }
        failure {
            echo "Build or Deployment Failed!"
        }
    }
}