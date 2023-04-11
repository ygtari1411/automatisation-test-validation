node {
   try {
       stage('Preparation - Checkout') {
           git branch: 'Nightly-Job-ChromeBrowser',
               credentialsId: 'docker-cred',
               url: "https://gitlab.advyteam.com/accretio3/weavin/weavin-functional-test-automation.git"
        }

        stage('Preparation - Launch docker image and cleaning') {

            sh "docker-compose -f /var/lib/jenkins/workspace/Bubble_Functional_Test_Automation_Chrome_Nightly/docker-compose.yml down"
            sh "sleep 10"
            sh "docker-compose -f /var/lib/jenkins/workspace/Bubble_Functional_Test_Automation_Chrome_Nightly/docker-compose.yml up -d"
            sh "sleep 20"
            sh "./mvnw clean"

        }

        stage('Integration tests') {

            sh './mvnw verify'

        }
   }
   catch (e) {
       currentBuild.result = "FAILED"
       throw e
   }
   finally {
       stage('Generating report'){
           cucumber '**/cucumber.json'
       }
       stage('Stopping and removing Selenium-Grid') {
           sh "docker-compose -f /var/lib/jenkins/workspace/Bubble_Functional_Test_Automation_Chrome_Nightly/docker-compose.yml down"
           sh "sleep 10"
       }
       stage('Sending Tests results') {
            mail bcc:"" , body: "<p> Rapport des tests automatiques de la plateforme Bubble sur navigateur Chrome : \n https://jenkins.advyteam.com/view/QA/job/Bubble_Functional_Test_Automation_Chrome_Nightly/${env.BUILD_NUMBER}/cucumber-html-reports/overview-features.html   </p>",
            cc: "",
            charset: 'UTF-8', from: 'QA-Automation-Team@accretio', mimeType: 'text/html', replyTo: '', subject: "Rapport N° ${env.BUILD_NUMBER} des tests automatiques de Bubble sur Chrome", to: 'yassine.gtari@advyteam.com,mohamed.benyedder@advyteam.com,hafedh.tlili@advyteam.com,ilyes.ghomri@advyteam.com,amine.benhmida@advyteam.com,abdelhamid.chirchi@advyteam.com,ons.mansouri@advyteam.com,nader.rahman@advyteam.com,kods.benkilani@advyteam.com,ines.keskes@advyteam.com,zaineb.hamdouch@advyteam.com,Ghada.ayadi@advyteam.com'
        }
   }
}