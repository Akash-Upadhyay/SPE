pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "mt2024013/calculator"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Akash-Upadhyay/SPE.git'
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
                    sh "docker push docker.io/${DOCKER_IMAGE}"
                }
            }
        }

        stage('Deploy Using Ansible') {
            steps {
                script {
                    sh "ansible_playbook -i inventory.ini ansible_playbook.yml"
                }
            }
        }
    }
}
