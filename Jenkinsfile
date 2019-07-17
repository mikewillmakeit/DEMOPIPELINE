pipeline {
  agent any
  stages {
    stage('Testing') {
      steps {
        sh 'Invoke-Pester -Path /var/lib/jenkins/ScriptsTests/'
      }
    }
  }
}