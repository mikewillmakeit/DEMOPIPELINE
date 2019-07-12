Jenkinsfile(Delcarative Pipeline)
pipeline {
    agent LINUXNODE
    stages{
        stage ('Checkout"){
            steps{
            checkout scm
            }
        }
        stage('TerraformPlan'){
            steps { 
                powershell "teraform init"
                powershell "terraform apply -state=path /example.tf" 
            }
        stage('Pester Test')   
        }
    }
}