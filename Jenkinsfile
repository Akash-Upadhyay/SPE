pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "your-dockerhub-username/calculator"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/yourusername/Calculator-Project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t ${DOCKER_IMAGE} ."
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-credentials', url: '']) {
                    sh "docker push ${DOCKER_IMAGE}"
                }
            }
        }

        stage('Deploy Using Ansible') {
            steps {
                script {
                    sh "ansible-playbook -i inventory.ini ansible-playbook.yml"
                }
            }
        }
    }
}
