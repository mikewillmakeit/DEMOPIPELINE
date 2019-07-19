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
        powershell 'Rename-Item -Path "c:\\ScriptsTests\\Add-One.ps1" -NewName "Add-One.psm1"'
      }
    }
    stage('Packaging') {
      steps {
        powershell './nuget pack'
        powershell 'choco push ./package.1.0.0.nupkg --source="http://13.59.44.78/chocolatey"  -apikey chocolateyrocks -force'
      }
    }
  }
}