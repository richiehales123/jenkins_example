pipeline {
    agent any 
    stages {
        stage('Clone the repo') { 
            steps {
                echo 'Checking if repository directory exists'
                script {
                    if (fileExists('jenkins_example')) {
                        echo 'Directory exists. Deleting...'
                        sh 'rm -rf jenkins_example'
                    } else {
                        echo 'Directory does not exist.'
                    }
                }
                echo 'Cloning the repository'
                sh 'git clone https://github.com/richiehales123/jenkins_example.git'
            }
        }
        stage('Sonarqube testing') { 
            steps {
                 script {
                    def scannerHome = tool 'sonarScan';
                        withSonarQubeEnv(installationName: 'sq1') {
                              sh "${scannerHome}/bin/sonar-scanner"
                        }
                }
            }
        }
        stage('Deploy') { 
            steps {
                echo 'goodbye' 
            }
        }
    }
}