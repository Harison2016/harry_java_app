@Library('my-shared-library') _

pipeline{
    agent any
    
    stages{
        
        stage('Git Checkout'){
            
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
            
            steps{
                
                script{

                    mvnTest()
                }
            }
        }

        stage('Integration Test maven'){
            
            steps{
                
                script{

                    mvnIntegrationTest()
                }
            }
        }

    }
}