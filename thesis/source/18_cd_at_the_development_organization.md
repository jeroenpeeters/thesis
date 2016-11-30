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
6.

### Recurring tasks

## Configuring the CD-pipeline

### Docker Dashboard

Every project team is equipped with a Docker Dashboard. The dashboard is a
web application through which the team can manage running applications on the
Docker infrastructure. The dashboard exposes a user interface and a programmable
interface for automation purposes. Through the dashboard the team manages:

1. Deployment of CD-pipeline support services
2. Deployment of the application under development

Upon project start a vanilla dashboard is deployed. The team has the freedom to
start any combination of Docker containers.

### Configuration

Property                  Value               Description
---------------------     -----------------   -----------------------------
jira-reporter-user        reporter
jira-reporter-password    ****



### Nexus
#### Add nexus to Docker dashboard.
Go to the Docker Dashboard user interface, click 'Apps', 'New App'. Enter the following app definition:

    name: nexus
    version: 2.13.0-01
    description: Sonatype Nexus repository manager.

    #login with admin / admin123

    #tags:infra

    www:
     image: sonatype/nexus:2.13.0-01
     user: root
     volumes:
     - /sonatype-work

Click 'Save changes' and start the application.

#### Configure security
Go to the Nexus user interface and log in with

            Username  Password
-------     ------    ----------
Account     admin     admin123

Go to 'Security',  'Users'. Select user ***anonymous***. Give the user full
control over all repositories. Click Add, select Repo: 'All Repositories (Full Control)'.
Click 'OK' and 'Save'.

### Gitlab
#### Add Gitlab to Docker dashboard
Go to the Docker Dashboard user interface, click 'Apps', 'New App'. Enter the following app definition:

    name: gitlab
    version: 8.6.1

    #tags:infra

    www:
      image: www.docker-registry.isd.tld:5000/gitlab-ce:8.6.1
      volumes:
        - /etc/gitlab
        - /var/log/gitlab
        - /var/opt/gitlab

Click 'Save changes' and start the application.

#### Create root account
Go to the Gitlab user interface. You will be asked to enter a new password for
the root user. Enter the password twice and click 'Change your password'.

#### Create usergroup and user(s)
Go to the Gitlab user interface. Log in with:

            Username  Password
-------     ------    ----------
Account     root      ***see previous step***

Go to 'Admin Area', 'Groups', 'New Group'. Enter:

Group path  Visibility Level
-------     ------    
test-group  Private    

Click 'Create Group'.

Go to 'Admin Area', 'Users', 'New User'. Enter:

Name        Username    Email
-------     ------      -------  
<name>      <username>  <email>

Click 'Create user'.

Click 'Edit' and enter:

Password    Password confirmation
-------     ------
user@123!   user@123!

Click 'Save Changes'.

Go to 'Admin Area' > 'Groups' > 'test-group'
Add user <username> to group with role 'Developer'.

Repeat for each user in the development team.

#### Create Jenkins user
Jenkins should be able to login to Gitlab in order to be able to checkout copies
of the source code. Therefore a dedicated user should be created.

Go to the Gitlab user interface. Log in with:

            Username  Password
-------     ------    ----------
Account     root      ***see previous step***

Go to 'Admin Area', 'Users', 'New User'. Enter:

Name        Username    Email
-------     ------      -------  
Jenkins     jenkins     noreply@jenkins.tld

Click 'Create User'.

Click 'Edit' and enter:

Password      Password confirmation
-------       ------
jenkins@123!  jenkins@123!

Click 'Save Changes'.

Go to 'Admin Area' > 'Groups' > 'test-group'
Add user jenkins to group with role 'Master'.


#### Import Jenkins SSH public key

Go to the Gitlab user interface. Log in with:

            Username  Password
-------     ------    ----------
Account     jenkins   jenkins@123!

Go to 'Profile Settings', 'SSH Keys'. Enter the SSH public key:

    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCrSFSIYRJjTbWqYuU6cGQ0aNae
    wMQ/m0k3m/MA7mNb2LEGNb0CQAoJDwwuPiftfj9cP6UrTlFqKGRKuLlAD7qrf9kQ
    OSzgfwDJ7lSYY8QqMP4U1CuL5IuMV/Zwg0npA9SnPpD8KcrxMQgKZ62F12xoR+vX
    LMSgMnTwu7olZVQphdMcvu2H5ugV4kBNyyRfKSeDDatsYKnwVirhLBRMtdFTLqo2
    wFe8dMM/2mZIiGl5KXg0gCXpD2VEFiVCINARGLsdh9nzn2gxLoagIbXzxWjGRo0t
    u69GuS2YqNj7GX5QJMpTP4UAWPvymx1TiJqmWAatejdfhYeJWoTLA6dnxaFV

Click 'Add key'.

#### Create project repository
Go to the Gitlab user interface. Log in with:

            Username  Password
-------     ------    ----------
Account     root      ***see previous step***

Go to 'Admin Area' > 'Projects' > 'New Project'. Enter:

Project Path              Visibility
------------              ----------------
/test-group/test-project  Private

Click 'Create project'.

Go to 'Admin Area' > 'Projects' > 'test-group/test-project' > 'Edit' > 'Protected Branches'
In table: 'Already Protected', Select Developers can push for branch master.

### Docker Registry

#### Add docker-registry to Docker dashboard
Go to the Docker Dashboard user interface, click 'Apps', 'New App'. Enter the following app definition:

    name: docker-registry
    version: 2.1.1

    #tags:infra

    www:
     image: distribution/registry:2.1.1
     mem_limit: 2048m
     environment:
      - REGISTRY_VERSION=0.1
      - REGISTRY_LOG_FIELDS_SERVICE=registry
      - REGISTRY_LOG_FIELDS_ENVIRONMENT=production
      - REGISTRY_STORAGE_CACHE_BLOBDESCRIPTOR=inmemory
      - REGISTRY_STORAGE_FILESYSTEM_ROOTDIRECTORY=/docker-registry/
      - 'REGISTRY_HTTP_ADDR=:5000'
      - REGISTRY_HTTP_HEADERS_X-CONTENT-TYPE-OPTIONS=[nosniff]
      - REGISTRY_HEALTH_STORAGEDRIVER_ENABLED=true
      - REGISTRY_HEALTH_STORAGEDRIVER_INTERVAL=10s
      - REGISTRY_HEALTH_STORAGEDRIVER_THRESHOLD=3
     volumes:
      - /docker-registry

Click 'Save changes' and start the application.

### Sonar

#### Add sonar to Docker dashboard
Go to the Docker Dashboard user interface, click 'Apps', 'New App'. Enter the following app definition:

    name: sonar
    version: 4.5.7
    description: Manage code quality

    #tags: infra
    #login with admin/admin

    www:
      image: sonarqube:4.5.7
      environment:
        - SONARQUBE_JDBC_USERNAME=sonar
        - SONARQUBE_JDBC_PASSWORD=sonar
        - "SONARQUBE_JDBC_URL=jdbc:mysql://db/sonar?useUnicode=true&amp;characterEncoding=utf8"
      volumes:
        - /opt/sonarqube/extensions/downloads
        - /opt/sonarqube/extensions/plugins
      links:
        - db
      enable_ssh: true

    db:
      image: mysql:5.6
      environment:
        - MYSQL_ROOT_PASSWORD=root
        - MYSQL_DATABASE=sonar
        - MYSQL_USER=sonar
        - MYSQL_PASSWORD=sonar
      volumes:
        - /var/lib/mysql

Click 'Save changes' and start the application.

#### Install plugins
From a local shell execute:

    cd /path/to/dir/with/sonar/plugins
    scp sonar-checkstyle-plugin-2.4.jar \
        sonar-findbugs-plugin-3.3.jar   \
        sonar-java-plugin-3.14.jar      \
        sonar-pmd-plugin-2.5.jar        \
        sonar-web-plugin-2.4.jar        \
        www.sonar.<your-project>.tld

    ssh www.sonar.<your-project>.tld
    cd /opt/sonarqube/extensions/plugins
    rm * && cp ~/* .
    exit

Go to the Docker Dashboard user interface and restart the Sonar application.

#### Add quality profiles
Go to the Sonar user interface. Login with:

            Username  Password
-------     ------    ----------
Account     admin     admin

Go to 'Quality Profiles', Click 'Restore Profile'. Select 'Development Organization Java profile' to import and click 'Restore'.
Click 'Restore Profile'. Select 'Development Organization Web profile' to import and click 'Restore'.

### Reporting

#### Create Jira filter
Go to the Jira user interface. Login with:

            Username            Password
-------     ------              ----------
Account     jira-reporter-user  jira-reporter-password


Go to 'Issues', 'Search for issues'. If the basic search is shown instead of the advanced search, click Advanced.
Enter the following query:

    project = <Jira project name> AND type in (Story, "Logical Test Case", Systeemfunctie) ORDER BY type

Click 'Save as'. Filter name: <name>. Click 'Submit'. Write down the filter-id of the filter (it’s displayed in the URL, https://jira.development-organization.nl/jira/issues/?filter=<filter-id>).

#### Add reporting application to Docker Dashboard
Go to the Docker Dashboard user interface, click 'Apps', 'New App'. Enter the following app definition:


    name: reporting
    version: 2.2.2
    description: Quality reporting

    #tags: autorun

    www:
      image: docker-registry.isd.tld:5000/birt-reports:2.1.65
      mem_limit: 2g
      environment:
        - REPORT_USER=reporter
        - REPORT_PASSWORD=reporter007
        - 'REPORT_URL=jdbc:postgresql://db:5432/birt'
        - REPORT_USER_RM=reporter
        - REPORT_PASSWORD_RM=reporter007
        - 'REPORT_URL_RM=jdbc:postgresql://db:5432/birt'
      links:
        - db

    importer:
      image: docker-registry.isd.tld:5000/birt-jira-importer:2.4.1
      environment:
        - 'report_jdbc_url=jdbc:postgresql://db:5432/birt'
        - 'jira_filter=filter=<filter-id>'
      links:
        - db

    trr:
      image: docker-registry.isd.tld:5000/birt-test-results-service:2.0.50
      environment:
        - 'report_jdbc_url=jdbc:postgresql://db:5432/birt'
      links:
        - db

    db:
        image: docker-registry.isd.tld:5000/birt-database:2.0.37
        volumes:
            - /var/lib/postgresql/data
        environment:
            - POSTGRES_PASSWORD=my-secret-pw
        mem_limit: 2g

    rm:
      image: docker-registry.isd.tld:5000/releasemanager:1.0.36
      environment:
        - DB_DRIVER=pdo_pgsql
        - DB_HOST=db
        - DB_PORT=5432
        - DB_USER=releasemanager
        - DB_PASSWORD=releasemanager007
        - DB_DATABASE=birt
      volumes:
        - /mnt/publish
      links:
        - db

Click 'Save changes' and start the application.


### Selenium
#### Add Selenium to Docker dashboard
Go to the Docker Dashboard user interface, click 'Apps', 'New App'. Enter the following app definition:

    name: selenium
    version: official

    #tags: autorun

    server:
      image: selenium/standalone-firefox

Click 'Save changes' and start the application.

### Quality-dashboard

**TODO! detail how to setup the quality tracking and monitoring system**
See http://wiki.isd.org/index.php/HandleidingKwaliteitssysteem > Opzet van een kwaliteitsdashboard

### Jenkins

#### Add Jenkins to Docker dashboard
Go to the Docker Dashboard user interface, click 'Apps', 'New App'. Enter the following app definition:

    name: jenkins
    version: 1.651.2
    description: An extendable open source CI server

    #tags: autorun

    www:
      image: jenkins:1.651.2
      volumes:
        - /var/jenkins_home
      environment:
        - "JAVA_OPTS=-Duser.timezone=Europe/Amsterdam"
      links:
        - jnlp
      enable_ssh: true

    jnlp:
      image: tehranian/dind-jenkins-slave:latest
      environment:
        - "DOCKER_DAEMON_ARGS=-H unix:///var/run/docker.sock -H tcp://0.0.0.0:2375 --insecure-registry 10.25.0.0/16"
        - "JAVA_OPTS=-Duser.timezone=Europe/Amsterdam"
      mem_limit: 2g
      privileged: true
      enable_ssh: true

Click 'Save changes' and start the application.

#### Install plugins
Go to the Jenkins user interface. Click 'Manage Jenkins', 'Manage Plugins', 'Available'.
Tick the box next to the following plugins:

 - Maven Release Plug-in Plug-in (0.14.0)
 - Git plugin (3.0.0)
 - SonarQube Plugin (2.4.4)
 - OWASP Dependency-Check Plugin (1.4.3)
 - Git client plugin (used by Git plugin)
 - SCM API Plugin (used by Git plugin)
 - Conditional BuildStep
 - Run Condition Plugin
 - Parameterized Trigger plugin
 - Workspace Cleanup Plugin
 - Build Pipeline Plugin

#### Configure system
Go to the Jenkins user interface. Click 'Manage Jenkins', 'Configure System'.
Look for the section 'SonarQube servers'. Click 'Click Add SonarQube'. Enter:

Property                      Value
------------                  ------------
Name                          SonarQube
Server URL                    http://www.sonar.<your-project>.tld:9000
Server version                5.1 or lower
Version of sonar-maven-plugin 3.0.1
Database URL                  jdbc:mysql://db.sonar.<your-project>.tld:3306/sonar
Database login                sonar
Database password             sonar

Look for the section 'Git plugin, Global config'. Enter:

Property                      Value
------------                  ------------
user.name                     jenkins
user.email                    noreply@jenkins.tld

Look for the section 'Maven'. Click 'Add Maven'. Enter:

Property                      Value
------------                  ------------
Name                          Maven 3.3.9
Version                       3.3.9

Look for the section 'E-mail Notification'. Enter:

Property                      Value
------------                  ------------
SMT server                    smtp.isd.org

Click 'Save'.

#### Add Gitlab user
Go to the Jenkins user interface. Click 'Credentials', 'Global', 'Add credentials'. Enter:

Property                      Value
------------                  ------------
Kind                          SSH username with private key
Scope                         Global
Username                      jenkins
Private key                   Enter directly
Description                   Gitlab user

Enter the key:

    -----BEGIN RSA PRIVATE KEY-----
    MIIEowIBAAKCAQEAq0hUiGESY021qmLlOnBkNGjWnsDEP5tJN5vzAO5jW9ixBjW9
    AkAKCQ8MLj4n7X4/XD+lK05RaihkSri5QA+6q3/ZEDks4H8Aye5UmGPEKjD+FNQr
    i+SLjFf2cINJ6QPUpz6Q/CnK8TEICmethddsaEfr1yzEoDJ08Lu6JWVUKYXTHL7t
    h+boFeJATcskXykngw2rbGCp8FYq4SwUTLXRUy6qNsBXvHTDP9pmSIhpeSl4NIAl
    6Q9lRBYlQiDQERi7HYfZ859oMS6GoCG188VoxkaNLbuvRrktmKjY+xl+UCTKUz+F
    AFj78psdU4iaplgGrXo3X4WHiVqEywOnZ8WhVQIDAQABAoIBAHSw9W5oe+eNpMut
    TrBuq8YM+tLzT4BqIgqxw2+J+cU0Lv6lE9z5lhyv1MOYcwlZLn+BmNyVIeBqHlHN
    4d+kF7AJjO+BlHJp9DaemaGsrpN0B1ZXakeHcA8wSmRC/dKzWmiKtqolKu8BUZIN
    Kmn55xBwl1tkU500YvkzXFFn5FvYg7NzvdgajfrywgU6GIm6miGWzkb0F5MRnXtb
    hhx32sSu9H87Fu54DpMIWQzzpqJuPPLL8SxZKheuceYcV/tXT6IG5WnSl3KnNVYX
    cSLRN4miN6dVlX9GIdwsAxdrqexm/OLw/J5Mgf2SaIKslMNoGciojtaQaLt/ofde
    UWa0lWECgYEA3kg9Tv8/iIWIzIYvgC8D/ZyjyExlcX6jVSrbFCjZyYhDqxA2LPSa
    SQwcHesLk4c4GS1in47Mo/otxdPYnmu2o0Ob4hoICGLEJiWdiI7ljJ8CWtsjNGts
    GhCsv3guTT1WnfOpWbsaKDodinEa2YNekxAjh/9EQZR4x6Y9EQ61C8kCgYEAxUOm
    W8orY6M4YYeb1nA9izW1twjrK0jZ6u07n3ooAVJx5WNr69/ATZx/Lw4ou1RGZ3qb
    q4/iol5DwenxcaETV5h5q/170pvnhkLoRIWd+Rd+oEu+GtYwVrLd/ybJZswJMYc/
    KIRHrw3DpM0yVxrilENe3TQ8k2O3VJRsucmHly0CgYEA2Jq+m5dh2vB9MQhli1zF
    X8LfWxUPGXzVPu4HFGsGZzvQ7QZcNIybOCmD0Ke13So8QVSXsXJe+j+VkRxyD1ZZ
    YFlGsxq4zysnhyDKlULib5iXm9/FO5Sef/vVyrMbM4tdN4g0c8s+nwqatMio6GL6
    qwZkCWd3pQxAchUNluylAfkCgYArkDIH6VDFs0D7QOBobecZfCYCIuUUbQU6/WMC
    aA63pAZlGxy1PXeRbDMmKCFUpVra9Ve1fpQVOW4LP+fDKUhFOvX7xoH209lAbDwx
    DbUCUm7zZWa5NH3+V4fxFha6LesF1hFbmELgZNDE70/jrptFFM+5WBTck9PjyNdt
    /BSGjQKBgDS8bI/B6uMos882AG4eOcUBEVdaTaOIBqJEM0s5u8PPNBaXsx4kfH62
    9vnfrX3tf8fj3UgrIsqEg/N2Pze2ktj8ikqz4cIJqX0fHHvEYC+FvqDcdit14Cv9
    q0lAlP1AXSP4kry7SguwMTlewfcMUXxwTEIs0PXujqx8uTBLnUBY
    -----END RSA PRIVATE KEY-----

Click 'OK'.

#### Add SSH user to connect to dind-slave
Go to the Jenkins user interface. Click 'Credentials', 'Global', 'Add credentials'. Enter:

Property                      Value
------------                  ------------
Kind                          SSH username with password
Scope                         Global
Username                      jenkins
Password                      jenkins
Description                   SSH user to connect to dind-node

Click 'OK'

#### Add dind node
Go to the Jenkins user interface. Click 'Manage Jenkins', 'Manage Nodes', 'New Node'. Enter:

Property                      Value
------------                  ------------
Node name                     docker-in-docker
Type                          Dumb Slave
Number of executors           4
Remote root directory         /tmp
Labels                        docker
Usage                         Only build jobs with label restrictions matching this node
Launch method                 Launch slave agents on Unix machines via SSH
Host                          jnlp.jenkins.<your-project>.tld
Credentials                   jenkins (SSH user to connect to dind-node)

Click 'Save'

#### Create Jenkins job for Sonar
Go to the Jenkins user interface. Click 'New item'.

Property                      Value
------------                  ------------
Item name                     sonar-app
Type                          Maven project

Click 'OK'.

**Configure job sonar-app**

Go to the Jenkins user interface. Click 'sonar-app', 'Configure'.

                      Property                      Value
-------               ------------                  ------------
Discard old builds    Max # of builds to keep       5
Git                   Repository URL                git@www.gitlab.<your-project>.tld:test-group/test-project.git
                      Credentials                   jenkins (gitlab user)
Build                 Root POM                      testapp/pom.xml
                      Goals                         clean install -DskipTests
Post-build Actions    ***select***                  SonarQube analysis with Maven

Click 'Save'.

#### Create Jenkins job for OWASP dependency checker
Go to the Jenkins user interface. Click 'New item'.

Property                      Value
------------                  ------------
Item name                     dependency-check-app
Type                          Maven project

Click 'OK'.

**Configure job dependency-check-app**

Go to the Jenkins user interface. Click 'dependency-check-app', 'Configure'.

                      Property                      Value
-------               ------------                  ------------
Discard old builds    Max # of builds to keep       5
Git                   Repository URL                git@www.gitlab.<your-project>.tld:test-group/test-project.git
                      Credentials                   jenkins (gitlab user)
Build                 Root POM                      testapp/pom.xml
                      Goals                         clean install -DskipTests
Post Steps            ***select***                  Run regardless of build resultaat
                                                    Invoke OWASP Dependency-Check analysis
                      ***click***                   Advanced
                      ***select***                  Generate optional HTML reports
Post-build Actions    ***select***                  Publish OWASP Dependency-Check analysis results

Click 'Save'.

#### Create job build-app
Go to the Jenkins user interface. Click 'New item'.

Property                      Value
------------                  ------------
Item name                     build-app
Type                          Maven project

Click 'OK'.


**Configure job build-app**
Go to the Jenkins user interface. Click 'build-app', 'Configure'.

                      Property                      Value
-------               ------------                  ------------
Discard old builds    Max # of builds to keep       5
Git                   Repository URL                git@www.gitlab.<your-project>.tld:test-group/test-project.git
                      Credentials                   jenkins (gitlab user)
Additional Behaviours                               Check out to specific local branch
                      Branch name                   master
Build Triggers        ***select***                  Poll SCM
                      Schedule                      H/5 * * * *
Build environment     ***select***                  Installed maven version
Build                 Root POM                      testapp/pom.xml
                      Goals                         clean install

Click 'Save'.

#### Create job build-image
Go to the Jenkins user interface. Click 'New item'.

Property                      Value
------------                  ------------
Item name                     build-image
Type                          Freestyle project

Click 'OK'.

**Configure job build-image**
Go to the Jenkins user interface. Click 'build-image', 'Configure'.

                      Property                      Value
-------               ------------                  ------------
Discard old builds    Max # of builds to keep       5
Restrict              Label Expression              docker
Git                   Repository URL                git@www.gitlab.<your-project>.tld:test-group/test-project.git
                      Credentials                   jenkins (gitlab user)
Build                 ***select***                  Execute shell
                      Command                       cd docker && ./build.sh

Click 'OK'.

#### Create job sonar-art
Go to the Jenkins user interface. Click 'New item'.

Property                      Value
------------                  ------------
Item name                     sonar-art
Type                          Maven project

Click 'OK'.

**Configure job sonar-art**
Go to the Jenkins user interface. Click 'sonar-art', 'Configure'.

                      Property                      Value
-------               ------------                  ------------
Discard old builds    Max # of builds to keep       5
Git                   Repository URL                git@www.gitlab.<your-project>.tld:test-group/test-project.git
                      Credentials                   jenkins (gitlab user)
Build                 Root POM                      testART/pom.xml
                      Goals                         clean install -DskipTests
Post-build Actions    ***select***                  SonarQube analysis with Maven

Click 'Save'.

#### Create job build-art
Go to the Jenkins user interface. Click 'New item'.

Property                      Value
------------                  ------------
Item name                     build-art
Type                          Maven project

Click 'OK'.


**Configure job build-art**
Go to the Jenkins user interface. Click 'build-art', 'Configure'.

                      Property                      Value
-------               ------------                  ------------
Discard old builds    Max # of builds to keep       5
Git                   Repository URL                git@www.gitlab.<your-project>.tld:test-group/test-project.git
                      Credentials                   jenkins (gitlab user)
Additional Behaviours                               Check out to specific local branch
                      Branch name                   master
Build environment     Release Ggoals                -Dresume=false release:prepare release:perform -Darguments="-DskipTests"
                      DryRun goals                  -Dresume=false -DdryRun=true release:prepare -Darguments="-DskipTests"
Build                 Root POM                      testART/pom.xml
                      Goals                         clean install -DskipTests

Click 'Save'.

#### Create job run-art
Go to the Jenkins user interface. Click 'New item'.

Property                      Value
------------                  ------------
Item name                     run-art
Type                          Maven project

Click 'OK'.

**Configure job run-art**
Go to the Jenkins user interface. Click 'run-art', 'Configure'.

                      Property                      Value
-------               ------------                  ------------
Discard old builds    Max # of builds to keep       5
Parameters            ***select***                  This build is parametrized
                      ***select***                  Add String Parameter
                      Name                          browserType
                      Default Value                 FIREFOX
                      ***select***                  Add String Parameter
                      Name                          seleniumServerUrl
                      Default Value                 http://server.selenium.<your-project>.tld:4444/wd/hub
                      ***select***                  Add String Parameter
                      Name                          applicationServerUrl
                      Default Value                 http://www.testapp.<your-project>.tld:8080              
Git                   Repository URL                git@www.gitlab.<your-project>.tld:test-group/test-project.git
                      Credentials                   jenkins (gitlab user)
Build                 Root POM                      testART/pom.xml
                      Goals                         -DbrowserType=$browserType -DseleniumServerUrl=$seleniumServerUrl -DapplicationServerUrl=$applicationServerUrl clean test

Add 'Execute shell' Post Step. Select 'Run only if build succeeds'. Enter command:

    export \
      URL="http://trr.reporting.<your-project>.tld:4567/upload" \
      APP_NAME="Testapp" \
      APP_VERSION="SNAPSHOT" \
      TEST_DESCRIPTION="ART Testapp" \
      TEST_USER="Jenkins" \
      TEST_VERSION="Master" \
      TEST_TARGET="$applicationServerUrl" \
      TEST_PLATFORM="$browserType" \
      TEST_RUN="ART" \
      DIR="testART/target/surefire-reports/junitreports"

    # Parallele upload van resultaat
    echo "Sending reports in ${DIR}"
    echo "${APP_NAME}"
    for file in $DIR/\*.xml; do
      [ -f $file ] || continue
      echo $file
    done | xargs -I{} --max-procs 0 bash -c '
      curl ${URL} \
        -s \
        -F "junit=@{}" \
        -F "application_name=${APP_NAME}" \
        -F "application_version=${APP_VERSION}" \
        -F "testrun_description=${TEST_DESCRIPTION}" \
        -F "testrun_user=${TEST_USER}" \
        -F "testrun_version=${TEST_VERSION}" \
        -F "test_target=${TEST_TARGET}" \
        -F "test_platform=${TEST_PLATFORM}" \
        -F "testrun=${TEST_RUN}" \

#### Create job load-ltcs
Go to the Jenkins user interface. Click 'New item'.

Property                      Value
------------                  ------------
Item name                     load-ltcs
Type                          Freestyle project

Click 'OK'.

**Configure job load-ltcs**
Go to the Jenkins user interface. Click 'load-ltcs', 'Configure'.

                      Property                      Value
-------               ------------                  ------------
Discard old builds    Max # of builds to keep       5
Bruild Trigers        ***select***                  periodically
                      Schedule                      H 6-20 * * 1-5

Add 'Execute shell' Build Step. Enter command:

    #!/bin/bash -ex

    # JIRA importer aanroepen
    data=$(curl -s http://importer.reporting.<your-project>.tld:4567/import)

    if [ "$data" == 'Import completed' ]
    then
      exit 0
    else
      exit 1
    fi

### Application under development

#### Add application to Docker Dashboard
Go to the Docker Dashboard user interface, click 'Apps', 'New App'. Enter the following app definition:

    name: testapp
    version: latest

    www:
      image: www.docker-registry.<your-project>.tld:5000/testapp:latest
      enable_ssh: true

Click 'Save changes' and start the application.
