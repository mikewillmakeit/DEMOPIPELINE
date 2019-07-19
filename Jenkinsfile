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
        powershell './nuget pack -Basepath ./ScriptsTests -Exclude *.ps1 -OutputDirectory .'
        powershell 'choco push ./ScriptsTests/package.1.0.0.nupkg --source="http://13.59.44.78/chocolatey"  '
      }
    }
  }
}