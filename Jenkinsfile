pipeline {
  agent {
    node {
      label 'WindowsNode'
    }

  }
  stages {
    stage('Testing') {
      steps {
        sh 'Invoke-Pester -Path /jenkins/workspace/DEMO_master/ScriptsTests'
      }
    }
  }
}