pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "my-python-app"
        DOCKER_TAG = "latest"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Setup') {
            steps {
                sh 'python3 -m venv venv'
                sh './venv/bin/pip install -r requirements.txt'
            }
        }

        stage('Test') {
            steps {
                sh './venv/bin/pytest'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Check if Docker is available
                    sh "docker build -t ${DOCKER_IMAGE}:${DOCKER_TAG} ."
                }
            }
        }

        stage('Deploy (Mock)') {
            steps {
                echo "Deploying ${DOCKER_IMAGE}:${DOCKER_TAG}..."
                // In a real scenario, you would push to a registry and update a service
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
