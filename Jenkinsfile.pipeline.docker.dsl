#https://www.jenkins.io/doc/book/pipeline/syntax/#agent 
# Execute the Pipeline, or stage, with the given container which will be dynamically provisioned on a node pre-configured to accept Docker-based Pipelines, 
# or on a node matching the optionally defined label parameter. docker also optionally accepts an args parameter which may contain arguments to pass directly
# to a docker run invocation, and an alwaysPull option, which will force a docker pull even if the image name is already present. 
#For example: agent { docker 'maven:3-alpine' }
pipeline {
    agent { docker { image 'python:3.5.1' } }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
            }
        }
    }
}
