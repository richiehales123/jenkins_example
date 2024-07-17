pipeline {
  agent any 
  stages {
    stage('Clone the repo') { 
      steps {
        git branch: 'main', url: 'https://github.com/richiehales123/jenkins_example.git'
      }
    }
    stage("Install Node.js in jenkins_example") {
      steps {
        dir('/workspace/docker_jenkins_sonarqube') {
          nodejs(nodeJSInstallationName: 'NodeJs') {
            echo 'Node.js installed in jenkins_example directory.'
          }
        }
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
    stage('Build Image with Buildah') {
      steps {
        script {
          sh 'id'
          echo 'Building the image with Buildah'
          sh 'buildah bud -t richieimage:1.0.0'
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