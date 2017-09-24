# Software Development at the Development Organization

TBD

## Project Roles

Within the development organization we distinguish the following roles.

Role                      Description
-------                   ------------
System Administrator      Maintains the (virtual-) network and server infrastructure.
Project Lead              Usually non-technical. Responsible for project outcome.
Software Developer        Develops the software (!).
Functional Tester         Creates functional test specifications and executes them (manually).
Test Automation Developer Creates automated repeatable tests.
Quality Manager           Ensures that the delivered software and other by-products adhere to the chosen standards.

## Scenario's
This paragraph describes a set of common scenario's in the life cycle of a
software development project. The scenario's are written with a particular
stakeholder in mind and help us to understand the needs, wishes and problems in
a structured way.

### Scenario 1: On-boarding a new project

**Stakeholder:** All.

When a new project is taken on by the development organization a technical
infrastructure needs to be setup in order to accommodate the development process.
It includes the setup of a CI/CD-pipeline, access-management and creation of
several (virtual) deployment servers.

### Scenario 2: Accommodate different sized projects
The tooling in the CD-pipeline needs to be flexible enough to support projects
of different sizes and architectures.
One project can be just as simple as a website with a couple of form inputs. It
can be deployed using a single web-server and requires a single database.
On the other hand there exist projects that develop applications to administer
larger parts of the governmental resident databases. These applications are
usually deployed on clustered load-balanced environments and require a redundant
database setup.
One step further are the applications which are deployed as a set of independent
services, requiring infrastructure integration like a message-bus, central authorization handling.

In order for the tests to be as realistic as possible, each setup requires a
production like environment.

### Scenario: Migrate to a different version of Java

**Stakeholder:** Software Developer.

When a new (bugfix)-version of Java is released developers need to update their
development, continuous integration and deployment environments.
Java needs to be updated on the developer's machine, CI-server and the different
test environments.


### Scenario: Upgrade the application server
...

### Scenario: Application instance per tester

**Stakeholder:** Functional Tester, Test Automation Engineer.

When a Tester needs to ascertain functionality or check for (absence of) regressions
it is very useful if an instance can be started with ease by the Tester.
This ensures that observed behavior is not impacted by actions of other's which is
crucial to come to a proper judgment or test script definition.
The Tester should be able to start an application instance with a specific test
data set at will and by the push of a button.


### Scenario: Parallel frontend test execution

**Stakeholder:** Test Automation Engineer.



### Scenario: Install a plugin in Jenkins CI

**Stakeholder:** Software Developer.



### Scenario: Upgrade Jenkins CI
...

### Scenario: Switch to another tool
...


# Continuous Delivery at the Development Organization

In this chapter we will discuss the previous and current Continuous Delivery
environment at the project organization. I use the scenario's described in the
previous chapter to exemplify the possibilities and problems of both environments.


## CI in a shared environment
This paragraph describes the previous CI/CD landscape at the development organization.

### The situation
The systems needed for CI/CD are managed by an Ops team. All projects use a
set of shared services. Figure \ref{relationship_ops_dev_shared} depicts the relationship between the Ops team
  and the development teams. The shared services are:

- Subversion
- Jenkins CI
- Jenkins build servers
- SonarQube
- Nexus
- Jira

![Relationship between Ops and Development teams in a shared environment \label{relationship_ops_dev_shared}](figures/teams-in-shared-environment2.png)

Besides the shared services each project would be assigned one or more deployment
servers. The deployment servers are managed by the Ops team.

The next chapter describes common scenario's that occur in a CI/CD environment on
request of the development team. These scenario's describe the impact on the
development team.

### Scenario's detailed
**TODO** In this paragraph I will detail the aforementioned scenario's for
this type of environment. Which scenario's can be implemented in this environment?
Are more troublesome? Cannot be implemented? Require a lot of manual intervention/work/configuration?


## CI in a distributed environment
This paragraph describes the current CI/CD landscape at the development organization.

### The situation
Instead of managing the systems needed for CI/CD the Ops team manages a distributed
environment in which teams are able to deploy applications at will and on demand.

![Relationship between Ops and Development teams in a distributed environment \label{relationship_ops_dev_distributed}](figures/teams-in-distributed-environment.png)


### Scenario's detailed
**TODO** In this paragraph I will detail the aforementioned scenario's for
this type of environment. Which scenario's can be implemented in this environment?
Are more troublesome? Cannot be implemented? Require a lot of manual intervention/work/configuration?

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
