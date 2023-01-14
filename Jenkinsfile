pipeline {
      
    agent any
    
    tools{
        maven 'Maven'
    }
      
    stages{
        
        stage('checkout'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/hgdeshmukh/myJavaAppRepo']]])
            }
        }
        stage('Build'){
            steps{
                sh 'mvn clean install -f MyWebApp/pom.xml'
            }
        }
        stage('Code Quality'){
            steps{
                withSonarQubeEnv('sonarqube'){
                sh 'mvn sonar:sonar -f MyWebApp/pom.xml'
                }
                
            }
        }
        stage('Nexus Upload'){
            steps{
                nexusArtifactUploader artifacts: [[artifactId: 'MyWebApp', classifier: '', file: 'MyWebApp/target/MyWebApp.war', type: 'war']], credentialsId: 'nexus-cred', groupId: 'com.mkyong', nexusUrl: '13.232.101.160:8081/', nexusVersion: 'nexus3', protocol: 'http', repository: 'maven-snapshots', version: '1.0-SNAPSHOT'
            }
        }
        stage('DEV Deploy'){
            steps{
                deploy adapters: [tomcat9(credentialsId: 'tomcat-cred', path: '', url: 'http://13.233.178.62:8080/')], contextPath: null, war: '**/*.war'
            }
        }  
        stage('Slack Notify'){
            steps{
                slackSend channel: 'jenkins', message: 'DEV Deloyment is successful'
            }
        }
        stage('QA Deployment'){
            steps{
                deploy adapters: [tomcat9(credentialsId: 'tomcat-cred', path: '', url: 'http://3.111.147.50:8080/')], contextPath: null, war: '**/*.war'
            }
        }
        stage('Slack Notify QA'){
            steps{
                slackSend channel: 'jenkins', message: 'QA Deloyment is successful, Please start your Testing'
            }
        }
    }
    
}
