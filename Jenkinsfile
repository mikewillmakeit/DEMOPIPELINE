pipeline {
  agent {
    node {
      label 'WindowsNode'
    }

  }
  stages {
    stage('Testing') {
      steps {
        powershell 'Invoke-Pester -Path .\\ScriptsTests'
        powershell './ScriptsTests/ScriptAnalyzerFunction'
      }
    }
    stage('Packaging') {
      steps {
        powershell './packaging/chocolateypackageandpush'
      }
    }
  }
}