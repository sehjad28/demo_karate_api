pipeline
{
    agent any
    stages
    {
        stage('Build') {
            steps {
                   script{
                          currentBuild.displayName = "Test Build"
                   }
                sh "mvn clean package -DskipTests"
            }
        }

        stage('PositiveTest')
        {
            steps
            {
                script
               {
                    try
                    {
                        echo 'agent Positive Scenarios..'
                        dir('demo-e2e-test')
                        {
                            script
                            {
                                sh "mvn -Denvironment=qa -Dtest=PositiveScenario test"
                            }
                        }
                    }
                    catch (err) {
                        echo "Positive Tests failed, continuing..."
                        echo err.getMessage()
                        catchError(buildResult: 'FAILURE', stageResult: 'FAILURE') {
                            sh "exit 1"
                        }
                    }
                }
            }
        }
    }
    post
    {
       always
       {
        cucumber jsonReportDirectory: 'agent-e2e-test/target/surefire-reports',fileIncludePattern: '**/*.json'
       }
    }
}