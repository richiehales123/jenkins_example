pipeline {
    agent any 
    stages {
        
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