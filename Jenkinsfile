pipeline {
  agent any 
  stages {
    stage('Clone the repo') { 
      steps {
        git branch: 'main', url: 'https://github.com/richiehales123/jenkins_example.git'
      }
    }

    // ****************** Run below stage once *******************
    // log in to conatianer and copy nodeJs to correct directory for sonarqube (check dirs for correct names - if success etc)
    // root@20a34e39112c:/var/jenkins_home#  cp -r tools/jenkins.plugins.nodejs.tools.NodeJSInstallation workspace/docker_jenkins_sonarqube
    // stage("Install Node.js in jenkins_example") {
    //   steps {
    //       nodejs(nodeJSInstallationName: 'NodeJs') {
    //         echo 'Node.js installed in jenkins_example directory.'
    //       }
    //   }
    // }

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