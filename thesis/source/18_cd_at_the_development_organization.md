# Continuous Delivery at the Development Organization

## A new project

This paragraph conceptually describes what happens when a new project is
embedded within the development organization. Besides organizational arrangements
a technical infrastructure is setup to accommodate the development of the
software application.

The following systems are employed:

- Gitlab
- Jenkins CI
- Jenkins build servers
- SonarQube
- Nexus
- Mediawiki
- Deployment servers
- Jira
- Releasemanager
- Quality dashboard
- Test reporting

The next paragraphs talk about the tasks that happen initially and tasks
that recur more frequently.

### Infrastructure setup
Initially every system used needs to be installed onto a target server. Depending
on how you choose to do the installation, this might take some time.

#### Gitlab
Gitlab is used as a revision control server.

1. Install Gitlab
2. Configure authentication mechanism (LDAP)
3. Set roles and permissions for users

#### Jenkins and build servers
Depending on the project one or more build servers are needed. A build server
has specific tooling on-board to be able to build the application. The following
list details the installation steps.

1. Install Jenkins CI
2. Install one or more Jenkins build servers
3. Install specific tooling on the build server
4. Configure the build server in the main Jenkins server
5. Configure authentication mechanism (LDAP)

#### SonarQube
SonarQube is used to continuously monitor the quality of the source code.

1. Install SonarQube
2. Configure authentication mechanism (LDAP)

#### Nexus
Nexus is used to archive and distribute software artifacts.

1. Install Nexus
2. Configure authentication mechanism (LDAP)

#### Mediawiki
Mediawiki is used as a team collaboration tool.

1. Install Mediawiki
2. Configure authentication mechanism (LDAP)

#### Deployment servers
For the purpose of deploying the application in a production like environment
a deployment landscape has to be setup. Depending on the application this can
be as simple as a single server, or as complex as a clustered setup of a
Java application server with a corresponding complex database setup.

#### Jira
Jira is readily available within the organization and doesn't need to be setup.
However, it needs to be configured to accommodate the new project.

### Project setup
After the infrastructure is setup the project team adds configuration to the
tools to be able to build and deploy their application.

1. A user for Jenkins needs to be created in Gitlab and configured in Jenkins
so that Jenkins can checkout copies of the source code.
2. Code repositories are created in Gitlab for the corresponding applications.
3. Optional, import existing source code into Gitlab.
4. Configure jobs in Jenkins to build, test and deploy (for every application)
5. Configure the location of the SonarQube API in Jenkins
6.

### Recurring tasks
