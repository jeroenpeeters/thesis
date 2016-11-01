# Continuous Delivery at the Development Organization

In this chapter I describe the technical setup and infrastructure of the CI/CD
environment at the development organization. First I describe the previous
situation and then the current situation. I do this by describing a set of
common scenario's.

## Scenario's

### Scenario 1: A new project
When a new project is taken on by the development organization a technical
infrastructure needs to be setup in order to accomodate the development process.
It includes the setup of a ci/cd-pipeline, access-management and creation of
serveral (virtual) deployment servers.

### Scenario: Use a new version of Java
...

### Scenario: Upgrade the application server
...

### Scenario: Application instance per tester
...

### Scenario: Parallel frontend test execution
...

### Scenario: Install a plugin in Jenkins CI
...

### Scenario: Upgrade Jenkins CI
...

### Scenario: Switch to another tool
...

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

### Nexus
#### Add nexus to Docker dashboard.
Go to Docker dashboard > Apps > New App.
Enter the following app definition:

    name: nexus
    version: 2.13.0-01
    description: Sonatype Nexus repository manager.
    pic: https://avatars0.githubusercontent.com/u/44938?v=3&s=400

    #login with admin / admin123

    #tags:infra

    www:
     image: sonatype/nexus:2.13.0-01
     user: root
     volumes:
     - /sonatype-work

Click Save changes

Start app nexus

#### Configure security
Go to Nexus > Log in with username admin and password admin123

Go to Security > Users
Select user anonymous
Click Add, select Repo: All Repositories (Full Control), click OK
Click Save

### Gitlab
#### Add gitlab to Docker dashboard

Go to Docker dashboard > Apps > New App
Enter the following app definition:

    name: gitlab
    version: 8.6.1

    #tags:infra

    www:
      image: www.docker-registry.isd.ictu:5000/gitlab-ce:8.6.1
      volumes:
        - /etc/gitlab
        - /var/log/gitlab
        - /var/opt/gitlab

Click Save changes

Start app gitlab

#### Create root account
Go to Gitlab
New password: root@123!
Confirm new password: root@123!
Click Change your password

#### Create usergroup and user(s)
Go to Gitlab > Log in with username root and password root123!

Go to Admin Area > Groups > New Group
Group path: test-group
Visibility Level: Private
Click Create Group

Go to Admin Area > Users > New User
Name: <name>
Username: <username>
Email: <email>
Click Create user
Click Edit
Password: user@123!
Password confirmation: user@123!
Click Save Changes

Go to  Admin Area > Groups > test-group
Add user <username> to group with role Developer

#### Create jenkins user
Go to Gitlab > Log in with username root and password root123!

Go to Admin Area > Users > New User
Name: Jenkins
Username: jenkins
Email: noreply@jenkins.ictu
Click Create user
Click Edit
Password: jenkins@123!
Password confirmation: jenkins@123!
Click Save Changes

Go to  Admin Area > Groups > test-group
Add user jenkins to group with role Master

#### Import jenkins SSH key
Go to Gitlab > Log in with username jenkins and password jenkins123!

Go to Profile Settings > SSH Keys

Key:
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCrSFSIYRJjTbWqYuU6cGQ0aNaewMQ/m0k3m/MA7mNb2LEGNb0CQAoJDwwuPiftfj9cP6UrTlFqKGRKuLlAD7qrf9kQOSzgfwDJ7lSYY8QqMP4U1CuL5IuMV/Zwg0npA9SnPpD8KcrxMQgKZ62F12xoR+vXLMSgMnTwu7olZVQphdMcvu2H5ugV4kBNyyRfKSeDDatsYKnwVirhLBRMtdFTLqo2wFe8dMM/2mZIiGl5KXg0gCXpD2VEFiVCINARGLsdh9nzn2gxLoagIbXzxWjGRo0tu69GuS2YqNj7GX5QJMpTP4UAWPvymx1TiJqmWAatejdfhYeJWoTLA6dnxaFV noreply@jenkins.ictu

Click Add key

#### Create project repo
Go to Gitlab > Log in with username root and password root123!

Go to Admin Area > Projects > New Project
Project path: http://www.gitlab-test.digilevering.ictu/test-group/test-project
Visibility: Private
Click Create project

Go to Admin Area > Projects > test-group/test-project > Edit > Protected Branches
In table Already Protected select Developers can push for branch master

### Docker Registry

#### Add docker-registry to Docker dashboard
Go to Docker dashboard > Apps > New App
Enter the following app definition:

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

Click Save changes
Start app docker-registry

### Sonar

#### Add sonar to Docker dashboard
Go to Docker dashboard > Apps > New App
Enter the following app definition:

    name: sonar
    version: 4.5.7
    description: Manage code quality
    pic: http://docs.sonarqube.org/download/attachments/6951171/SONAR?version=1&modificationDate=1452514709000&api=v2

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

Click Save changes

Start app sonar

#### Install plugins
Open terminal

    cd /path/to/dir/with/sonar/plugins
    scp sonar-checkstyle-plugin-2.4.jar sonar-findbugs-plugin-3.3.jar sonar-java-plugin-3.14.jar sonar-pmd-plugin-2.5.jar sonar-web-plugin-2.4.jar www.sonar.<your-project>.ictu:~
    ssh -p 22 www.sonar.<your-project>.ictu
    cd /opt/sonarqube/extensions/plugins
    rm *
    cp ~/* .
    exit

Go to Docker dashboard > Apps
Restart sonar app

#### Add quality profiles
Go to Sonar > Login with username admin and password admin

Go to Quality Profiles
Click Restore Profile
Select ICTU Java profile to import and click Restore
Click Restore Profile
Select ICTU Web profile to import and click Restore

### Reporting

#### Create Jira filter
Go to Jira > Log in with username isf-reporter and password Cf1NzS8INfJUB5wDQHI9

Go to Issues > Search for issues
If the basic search is shown instead of the advanced search, click Advanced
Enter the following query:

project = <Jira project name> AND type in (Story, "Logical Test Case", Systeemfunctie) ORDER BY type

Click Save as
Filter name: <name>
Click Submit

Write down the filter-id of the filter (it’s displayed in the URL, https://jira.ictu-sd.nl/jira/issues/?filter=<filter-id>)

#### Add reporting to Docker dashboard
Go to Docker dashboard > Apps > New App
Enter the following app definition:

    name: reporting
    version: 2.2.2
    description: ISD quality reporting
    pic: http://www.timetell.nl/wp-content/uploads/2015/03/logo-ictu.png

    #tags: autorun

    www:
      image: docker-registry.isd.ictu:5000/birt-reports:2.1.65
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
      image: docker-registry.isd.ictu:5000/birt-jira-importer:2.4.1
      environment:
        - 'report_jdbc_url=jdbc:postgresql://db:5432/birt'
        - 'jira_filter=filter=<filter-id>'
      links:
        - db

    trr:
      image: docker-registry.isd.ictu:5000/birt-test-results-service:2.0.50
      environment:
        - 'report_jdbc_url=jdbc:postgresql://db:5432/birt'
      links:
        - db

    db:
        image: docker-registry.isd.ictu:5000/birt-database:2.0.37
        volumes:
            - /var/lib/postgresql/data
        environment:
            - POSTGRES_PASSWORD=my-secret-pw
        mem_limit: 2g

    rm:
      image: docker-registry.isd.ictu:5000/releasemanager:1.0.36
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

Click Save changes

Start app reporting

### Selenium
#### Add selenium to Docker dashboard
Go to Docker dashboard > Apps > New App
Enter the following app definition:

    name: selenium
    version: official

    #tags: autorun

    server:
     image: selenium/standalone-firefox

Click Save changes

Start app selenium


### Quality-dashboard

**TODO! detail how to setup the quality tracking and monitoring system**
See http://wiki.isd.org/index.php/HandleidingKwaliteitssysteem > Opzet van een kwaliteitsdashboard

### Jenkins

#### Add jenkins to Docker dashboard
Go to Docker dashboard > Apps > New App
Enter the following app definition:

    name: jenkins
    version: 1.651.2
    description: An extendable open source automation server
    pic: http://rabellamy.github.io/DevOps-Sunset/images/jenkins.png


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

Click Save changes
Start app jenkins

#### Install plugins
Go to Jenkins > Manage Jenkins > Manage Plugins > Available

Select the following plugins:

Maven Release Plug-in Plug-in (0.14.0)
Git plugin (3.0.0)
SonarQube Plugin (2.4.4)
OWASP Dependency-Check Plugin (1.4.3)
Git client plugin (used by Git plugin)
SCM API Plugin (used by Git plugin)
Conditional BuildStep + Run Condition Plugin?
Parameterized Trigger plugin?
Static Analysis Utilities (used by OWASP Dependency-Check Plugin)
Token Macro Plugin (used by OWASP Dependency-Check Plugin)
Workspace Cleanup Plugin?
Build Pipeline Plugin?

#### Configure system
Go to Jenkins > Manage Jenkins > Configure System

SonarQube servers
Click Add SonarQube
Name: SonarQube
Server URL: http://www.sonar.<your-project>.ictu:9000
Server version: 5.1 or lower
Click Advanced
Version of sonar-maven-plugin: 3.0.1
Database URL: jdbc:mysql://db.sonar.<your-project>.ictu:3306/sonar
Database login: sonar
Database password: sonar

Git plugin
Global Config user.name Value: jenkins
Global Config user.email Value: noreply@jenkins.ictu

Maven
Click Add Maven
Name: Maven 3.3.9
Version: 3.3.9

E-mail Notification
SMTP server: smtp.isd.org

Click Save


#### Add gitlab user
Go to Jenkins > Credentials > (global) > Add credentials
Kind: SSH username with private key
Scope: Global
Username: jenkins
Private key: Enter directly
Key:

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

Description: gitlab user

Click OK

#### Add SSH user to connect to dind-slave
Go to Jenkins > Credentials > (global) > Add credentials

Kind: Username with password
Scope: Global
Username: jenkins
Password: jenkins
Description: SSH user to connect to dind-slave

Click OK

#### Add dind-slave
Go to Jenkins > Manage Jenkins > Manage Nodes > New Node

Node name: dind-slave
Select Dumb Slave
Click OK

number of executors: 2
Remote root directory: /tmp
Labels: docker
Usage: Only build jobs with label restrictions matching this node
Launch method: Launch slave agents on Unix machines via SSH
Host: jnlp.jenkins.<your-project>.ictu
Credentials: jenkins (SSH user to connect to dind-slave)

Click Save

#### Create job sonar-app
Go to Jenkins > New item

Item name: sonar-app
Select Maven project

Click OK
Configure job sonar-app
Go to Jenkins > sonar-app > Configure

Select Discard old builds
Max # of builds to keep: 5

Source Code Management
Select Git
Repository URL: git@www.gitlab.<your-project>.ictu:test-group/test-project.git
Credentials: jenkins (gitlab user)

Build Triggers
Unselect all options

Build
Root POM: testapp/pom.xml
Goals and options: clean install -DskipTests

Post-build Actions
Click Add post-build action, select SonarQube analysis with Maven

Click Save

#### Create job dependency-check-app
Go to Jenkins > New item

Item name: dependency-check-app
Select Maven project

Click OK
Configure job dependency-check-app
Go to Jenkins > dependency-check-app > Configure

Select Discard old builds
Max # of builds to keep: 5

Source Code Management
Select Git
Repository URL: git@www.gitlab.<your-project>.ictu:test-group/test-project.git
Credentials: jenkins (gitlab user)

Build Triggers
Unselect all options

Build
Root POM: testapp/pom.xml
Goals and options: clean install -DskipTests

Post Steps
Select Run regardless of build resultaat
Click Add post-build step, select InvokeOWASP Dependency-Check analysis
Click Advanced
Select Generate optional HTML reports

Post-build Actions
Click Add post-build action, select Publish OWASP Dependency-Check analysis results

Click Save

#### Create job build-app
Go to Jenkins > New item

Item name: build-app
Select Maven project

Click OK

#### Configure job build-app
Go to Jenkins > build-app > Configure

Select Discard old builds
Max # of builds to keep: 5

Source Code Management
Select Git
Repository URL: git@www.gitlab.<your-project>.ictu:test-group/test-project.git
Credentials: jenkins (gitlab user)
Additional Behaviours
	Click Add, select Check out to specific local branch
	Branch name: master

Build Triggers
Select Poll SCM
Schedule: H/5 * * * *

Build environment
Select Maven release build
Default versioning mode: None

Build
Root POM: testapp/pom.xml
Goals and options: clean install

Click Save

####Create job build-image
Go to Jenkins > New item

Item name: build-image
Select Freestyle project

Click OK

#### Configure job build-image
Go to Jenkins > build-image > Configure

Select Discard old builds
Max # of builds to keep: 5

Select Restrict where this project can be run
Label Expression: docker

Source Code Management
Select Git
Repository URL: git@www.gitlab.<your-project>.ictu:test-group/test-project.git
Credentials: jenkins (gitlab user)

Build
Click Add build step, select Execute shell
Command:

cd docker
./build.sh

#### Create job sonar-art
Go to Jenkins > New item

Item name: sonar-art
Select Maven project

Click OK

#### Configure job sonar-art
Go to Jenkins > sonar-art > Configure

Select Discard old builds
Max # of builds to keep: 5

Source Code Management
Select Git
Repository URL: git@www.gitlab.<your-project>.ictu:test-group/test-project.git
Credentials: jenkins (gitlab user)

Build Triggers
Unselect all options

Build
Root POM: testART/pom.xml
Goals and options: clean install -DskipTests

Post-build Actions
Click Add post-build action, select SonarQube analysis with Maven

Click Save


#### Create job build-art
Go to Jenkins > New item

Item name: build-art
Select Maven project

Click OK

#### Configure job build-art
Go to Jenkins > build-art > Configure

Select Discard old builds
Max # of builds to keep: 5

Source Code Management
Select Git
Repository URL: git@www.gitlab.<your-project>.ictu:test-group/test-project.git
Credentials: jenkins (gitlab user)
Additional Behaviours
	Click Add, select Check out to specific local branch
	Branch name: master

Build environment
Select Maven release build
Release goals and options: -Dresume=false release:prepare release:perform -Darguments="-DskipTests"
DryRun goals and options: -Dresume=false -DdryRun=true release:prepare -Darguments="-DskipTests"
Default versioning mode: None

Build
Root POM: testART/pom.xml
Goals and options: clean install -DskipTests

Click Save

#### Create job run-art
Go to Jenkins > New item

Item name: run-art
Select Maven project

Click OK

#### Configure job run-art
Go to Jenkins > run-art > Configure

Select Discard old builds
Max # of builds to keep: 5

Select This build is parametrized
Click Add Parameter, select String Parameter
Name: browserType
Default Value: FIREFOX
Click Add Parameter, select String Parameter
Name: seleniumServerUrl
Default Value: http://server.selenium.<your-project>.ictu:4444/wd/hub
Click Add Parameter, select String Parameter
Name: applicationServerUrl
Default Value: http://www.testapp.digilevering.ictu:8080

Source Code Management
Select Git
Repository URL: git@www.gitlab.<your-project>.ictu:test-group/test-project.git
Credentials: jenkins (gitlab user)

Build
Root POM: testART/pom.xml
Goals and options: -DbrowserType=$browserType -DseleniumServerUrl=$seleniumServerUrl -DapplicationServerUrl=$applicationServerUrl clean test

Post Steps
Select Run only if build succeeds
Click Add post-build step, select Execute shell
Command:

    export \
      URL="http://trr.reporting.<your-project>.ictu:4567/upload" \
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
Go to Jenkins > New item

Item name: load-ltcs
Select Freestyle project

Click OK

#### Configure job load-ltcs
Go to Jenkins > load-ltcs > Configure

Select Discard old builds
Max # of builds to keep: 5

Build Triggers
Select Build periodically
Schedule: H 6-20 * * 1-5

Build
Click Add build-step, select Execute shell
Command:

    #!/bin/bash -ex

    # JIRA importer aanroepen
    data=$(curl -s http://importer.reporting.<your-project>.ictu:4567/import)

    if [ "$data" == 'Import completed' ]
    then
      exit 0
    else
      exit 1
    fi

### Application

#### Add application to Docker dashboard
Go to Docker dashboard > Apps > New App
Enter the following app definition:

    name: testapp
    version: latest

    www:
      image: www.docker-registry.<your-project>.ictu:5000/testapp:latest
      enable_ssh: true

Click Save changes

Start app testapp
