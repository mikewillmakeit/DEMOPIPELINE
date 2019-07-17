pipeline {
  agent any
  stages {
    stage('Testing') {
      steps {
        sh 'Invoke-Pester -Path C:\\jenkins\\ScriptsTests\\'
      }
    }
  }
}