pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/ahmadlaiq/nodejs-jenkins.git'
            }
        }
        
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        
        stage('Deploy') {
            steps {
                sh '''
                    cd /www/wwwroot/node
                    git pull origin main
                    npm install
                    pm2 startOrRestart index.js -i max
                '''
            }
        }
    }
}