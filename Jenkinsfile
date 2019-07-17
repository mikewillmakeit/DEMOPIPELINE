pipeline {
  agent none
  stages {
    stage('Testing') {
      steps {
        sh 'Invoke-Pester -Path /var/lib/jenkins/'
      }
    }
  }
}