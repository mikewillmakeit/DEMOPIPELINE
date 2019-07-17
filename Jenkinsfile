pipeline {
  agent {
    node {
      label 'WindowsNode'
    }

  }
  stages {
    stage('Testing') {
      steps {
        sh 'Invoke-Pester'
      }
    }
  }
}