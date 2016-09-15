# Thesis
This repo contains the source text of my Master's thesis in Software Engineering. It is a work in progress.

# Notes

software process -> annotated bibliography.

# Problems

## CD Tooling
To be able to incorporate CI and CD in the software process tooling is necessary.
If I look at the projects that we do it mainly comes down to the following setup.

  1. Gitlab
  2. Nexus
  3. Jenkins CI
  4. SonarQube
  5. Custom QA assessment tooling
  6. Selenium
  7. Custom cloud orchestration tooling
  8. Docker servers
  9. Production like environment

It is probably obvious that the setup of this combination of tools is non-trivial. To be able to make the tooling integrate seamlessly one needs to have in-depth knowledge of each of the tools.
At the development organization we long have stopped with maintaining a single setup for all teams. In the past a single setup has proven to become difficult to upgrade without hurting anyone. It was also impossible for teams to request installation of plugins or to cater for different CI scenario's. We have since chosen for team specific and on-demand service infrastructure based on Docker. This means that teams have their own cloud infrastructure for hosting the CI/CD tooling and for deploying the application(s) they develop. We can now, with a couple of button clicks, start a new team infrastructure including the CI/CD tooling.

While this is a big step forward it simply isn't enough. After provisioning, the environment still needs configuration in order to integrate the CI/CD services. Integration usually means that after a push to Gitlab, Jenkins starts to build the software. Then you should run the unit tests, publish artifacts to nexus, run SonarQube for QA and build a cloud package. After that the cloud tooling should be informed to deploy a new version of the software and start the Selenium integration tests.

It is usually the responsibility of the team to configure this correctly. It means that one or more team members should have knowledge of all systems mentioned and how to configure them. It also entails repetitive work for every artifact that should go through the pipeline. Furthermore all teams usually configure it a bit differently which leads to non-uniform environments.

 - How to solve the CI/CD pipeline configuration?
 - Usually CD is a major investment, can we reduce costs?
 - Tooling in a particular configuration set are required; this is fragile since one change might break the pipeline. Can we make the pipeline more resilient?

## CD Adoption



# Papers / Articles

## [Stack Overflow: CI vs CD ](http://stackoverflow.com/questions/28608015/continuous-integration-vs-continuous-delivery-vs-continuous-deployment)
 -


## http://martinfowler.com/bliki/ContinuousDelivery.html
 -


## On the journey to continuous deployment: Technical and social challenges along the way
Literature review and case study at Atlassian. Contains summary of challenges faced and mitigation strategies.

 - organisations need to be well prepared to handle technical and social adoption challenges
 - requires proper hardware and software to handle the CD process
 - software developers may feel an increased amount of pressure to have code ready to be deployed immediately
 - lack of understanding / lack of motivation
 - team members have to adapt to different tasks in new roles due to working in a CD environment
 - customers may not notice the newly added features
 - this papers mentions 'T. Fitz, Continuous Deployment at IMVU: Doing the Impossible Fifty Times a Day' as where the term CD was first used.


## Read List

 * T. Fitz, Continuous Deployment at IMVU: Doing the Impossible Fifty Times a
Day. **(coined term CD)**

 -  H.H. Olsson, H. Alahyari, J. Bosch, Climbing the ‘‘Stairway to Heaven’’ – a multiple-case study exploring barriers in the transition from agile development towards continuous deployment of software
 - J. Humble, D. Farley, Continuous Delivery: Reliable Software Releases through
Build, Test, and Deployment Automation
 - J. Bosch (editor), Continuous Software Engineering, book
 - Yuhong Liu, Chengbo Li and Wei Liu, Integrated Solution for Timely Delivery of Customer Change Requests: A Case Study of Using DevOps Approach
 - Mathias Meyer, Continuous Integration and Its Tools
