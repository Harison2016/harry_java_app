@Library('my-shared-library') _

pipeline{
    
    agent any

    paramters{
        
        choice(name: 'action', choices: 'create\ndelete', description: 'Choose create/Destroy')
    }
    
    stages{
        
        stage('Git Checkout'){
            when { expression {  params.action == 'create' } }
            
            steps{
                
                script{

                    gitCheckout(
                        branch: "master",
                        url: "https://github.com/Harison2016/harry_java_app.git"
                    )
                }
            }
        }

        stage('Unit Test maven'){
            when { expression {  params.action == 'create' } }
            
            steps{
                
                script{

                    mvnTest()
                }
            }
        }

        stage('Integration Test maven'){
            when { expression {  params.action == 'create' } }
            
            steps{
                
                script{

                    mvnIntegrationTest()
                }
            }
        }

           stage('static code analysis sonarqube'){
            when { expression {  params.action == 'create' } }
            
            steps{
                
                script{
                    
                    def SonarQubecredentialsId = 'sonarqube-api'

                    statiCodeAnalysis(SonarQubecredentialsId)
                }
            }
        }

    }
}