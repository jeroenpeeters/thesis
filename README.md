# Thesis
This repo contains the source text of my Master's thesis in Software Engineering. It is a work in progress.

Check [HISTORY.md](HISTORY.md) to see what changed.

Looking for the latest version?
- [HTML](http://jeroenpeeters.nl/thesis/thesis.html)
- [PDF](http://jeroenpeeters.nl/thesis/thesis.pdf)

# How to write a thesis?

***"How to write a thesis" - Umberto Eco*** (Come si fa una tesi di laurea: le materie umanistische)

- "You must write a thesis that you are able to write"
- The topic must match your experience, previous studies and courses.
- Required resources should be accessible.
- Narrow the the scope as much as possible. You will be an expert in a subject in which the committee is not. "The more you narrow the field, the better and more safely you will work."
- Six-month thesis: Topic should be clearly defined, contemporary. Sources are locally available and accessible.
- What is a scientific thesis?
  - "The research deals with a specific object, defined so others can identify it."
  - "The research says something that hasn't been said about this object, or revises the things that have already been said from a different perspective."
  - The research is useful to others. It advances our general knowledge.
  - "The research provides the elements required to verify or disprove the hypothesis is presents, and therefore it provides the foundation for future research."

# Interview

## Questions

- Can you explain what your project looks like?
  - Number of applications?
  - Number of images?
  - Number of daily deployments?
  - How many teams? Developers?
- What problems do you encounter in your daily work?
- How do you test?
- When new people join the project, how do you get them up to speed?
- Availability of environment?
- Do you use separate virtual machines?
- Do you use the quality reporting to improve quality?
- Do you deliver quality and test reports to the client?
- What do you think about the test case administration?
- What do you think about the default tool selection?
- Do you use the ability to start arbitrary services to aid development?
- Are you experts on the tooling you're using?
- Do you need access to the Docker hosts?
- How do you deal with a full Docker registry?
- How do you view the support from within the organization?
- Before you started on this project, did you have CD experience and experience on the tooling in use?
- What do you think about putting the responsibility of the CD environment with the team?

# Todo

 - [ ] Add picture of current pipeline architecture
 - [ ] Add overview of manual steps in CD process
    - How much time does it take
    - How often does it happen (once, daily, every sprint, ...)
    - What kind of faults occur, what frequency?
    - Why isn't/couldn't this step be automated
 - [ ] Indicate maintenance effort
    - What maintenance jobs are there?
    - What frequency, how much work, what goes wrong?

 - [ ] Create a structured problem description
 - [ ] Identify CI solutions and performance in practice
 - [ ] Identify improvements with thorough problem analysis
 - [ ] Realize the improvements
 - [ ] Report on the performance of the improved situation

# Notes

1. Beschrijf software development aanpak van de ontwikkelorganisatie.
2. Beschrijf een aantal scenario's in het ontwikkelproces.
3. Beschrijf de oude en huidige situatie
4. Beschrijf voor beide situaties (oud en nieuw) hoe de scenario's daarin passen
   1. Wat zijn de pijnpunten?

zoek in jira voor problemen.

kwalitatief -> welke problemen bij teams?
monitoren -> kan ik die problemen vinden in jira, code, issues, wiki? hoeveel? impact?

probleem opgelost? -> standaardisatie?

hypothese: er zijn probleme door vergrote vrijehdi van teams, standaardproblemen
geen standaardoplossing. er is veel energie/effort nodig om te begrijpen hoe het werkt.
verlies. tijd besparen door standaardoplossing?

tegenhypo: door veel varieteit in oplossing maakt kennis binnen de ontwikkelorganisatie rijker.
veel over onnodig problemen nagedacht. bij echt probleem getraind in problemen oplossen.
standardisatie vermijd problemen, maar je wordt een slechtere probleemoplosser. bij een
echt probleem ben je dan een slechtere probleemoplosser.

wanneer in balans? hoe weet je dat?

wat is bedreiging: creatieve expert die mooie moeilijke oplossingen maakt of
incompetente ontwikkelaars die niet begrijpen wat ze doen.

andere mogelijkheid, scaffolding: voelen teams zich gefaciliteerd?
Hoeveel werk? leercurve? welke problemen? leuk werk/vervelend?
wat heb je geprobeerd wat niet kan?

# Popularity

![Popularity of Continuous Delivery according to Google Trends](images/google-trends-popularity-term-continuous-delivery.png)

[source](https://www.google.com/trends/explore?date=2006-06-01%202016-06-01&q=Continuous%20Delivery)

![Popularity of Continuous Integration according to Google Trends](images/google-trends-popularity-term-continuous-integration.png)

[source](https://www.google.com/trends/explore?date=2006-06-01%202016-06-01&q=Continuous%20Integration)

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
Deciding that you want to do CD and actually doing CD are two completely different things. Depending on the current state of the project and the level of knowledge and commitment amongst its members and stakeholders it might be very hard to incorporate CD best practices and strategies into the development process.
CD doesn't only heavily depend on tools but also on process. With the tooling in place CD can still fail. Team members should incorporate the CD philosophy into their every day activities. It demands a certain kind of work-flow and willingness of members to always produce production ready code.
It also demands that people, to some extend, give up their preferred roles. Developers are not just developers. Testers are not just testers. Sysadmins are not just sysadmins. CD requires adoption of the DevOps philosophy. Everyone will be responsible for producing production quality code. Everyone will be responsible for tests. Everyone will be responsible for deploying the application and maintaining the automation of the CI/CD pipeline. Not everyone will be willing to give up or share their role.
And then there is the business. The business might not be willing to have that many release cycles. How will they update customers? But even then, CD is valuable because it gives constant feedback about the quality of the entire system.

Even if you can work out the process and everyone is willing to contribute it might still be a hard nut to crack because of legacy systems with low test coverage. Investment is needed to crank up the test coverage before decision makers might convinced to automatically roll-out changes.

 - What are problems that teams encounter when CD is introduced?
 - What are their mitigation strategies/solutions to these problems?
 - What is the impact of CD on ...
   - Software quality
     - Are bugs found earlier (before production)
   - Development pace
 - What is the impact of CD on team roles?
 - Do the proposed benefits of CD actually exist?
   - Do the benefits outweigh the overhead of CD?



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

 * [T. Fitz, Continuous Deployment at IMVU: Doing the Impossible Fifty Times a
Day.](http://timothyfitz.com/2009/02/10/continuous-deployment-at-imvu-doing-the-impossible-fifty-times-a-day/) **(coined term CD)**

 -  [H.H. Olsson, H. Alahyari, J. Bosch, Climbing the ‘‘Stairway to Heaven’’](http://ieeexplore.ieee.org/document/6328180/)
 - [J. Humble, D. Farley, Continuous Delivery: Reliable Software Releases through
Build, Test, and Deployment Automation](https://scholar.google.nl/scholar?hl=nl&q=Continuous+Delivery%3A+Reliable+Software+Releases+through+Build%2C+Test%2C+and+Deployment+Automation&btnG=&lr=)
 - [J. Bosch (editor), Continuous Software Engineering, book](http://link.springer.com/book/10.1007/978-3-319-11283-1)
 - [Yuhong Liu, Chengbo Li and Wei Liu, Integrated Solution for Timely Delivery of Customer Change Requests: A Case Study of Using DevOps Approach](http://www.sersc.org/journals/IJUNESST/vol7_no2/4.pdf)
 - [Mathias Meyer, Continuous Integration and Its Tools](http://ieeexplore.ieee.org/document/6802994/)

### Maybe's

 - [Eric Ries, The Lean Startup](https://www.bol.com/nl/p/the-lean-startup/1001004011646750/?Referrer=ADVNLGOO002011I-NZRCXS3C4BP4A-48184046970)
