pipeline {
		agent {
			label "dind18"
		}
stage('Build image') { // build and tag docker image
        steps {
            echo 'Starting to build docker image'

            script {
                def dockerfile = 'Dockerfile'
                def customImage = docker.build('artifactory.fis.dev/artifactory/webpay-docker-snapshot-local/jenkins/jq:latest', "-f ${dockerfile} .")

            }
        }
    }

    // stage ('Push image to Artifactory') { // take that image and push to artifactory
    //     steps {
    //         rtDockerPush(
    //             serverId: "jFrog-ar1",
    //             image: "10.20.111.23:8081/docker-virtual/hello-world:latest",
    //             host: 'tcp://localhost:2375',
    //             targetRepo: 'local-repo', // where to copy to (from docker-virtual)
    //             // Attach custom properties to the published artifacts:
    //             properties: 'project-name=docker1;status=stable'
    //         )
    //     }
    // }
}
