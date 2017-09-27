
# Introduction

This thesis discusses the software development and delivery approach of a
semi-governmental Software Development Organization. The approach is based on
Agile Continuous Delivery and Deployment principles. These principles allow a
great degree of freedom to individual development teams. The organization
supports the teams with a private computing cloud which enables them to deploy
applications and supporting services as they require. In order to streamline
workflow across teams the development organization prescribes that teams use
tooling that support the Continuous Delivery process.

Since the introduction of a private computing cloud teams are required to
embed more knowledge about Continuous Delivery tooling into the team. This has
led to problems, which are discussed in TODO: insert chapter ref. This has led
to standardization of the tooling needed for an Agile Continuous Delivery approach.

In this thesis I will give an overview of the problems encountered when teams
had complete freedom over their private cloud setup. The problems were collected
from bug reports and interviews with development teams.
Based on these issues standardization was introduced to mitigate some of the problems.
Finally we look how teams perceive the standardization.

## Problem Analysis

When the Software Development Organization started everything had to be build up
from the ground. Because it is a non-profit organization everything is directly
payed from project revenue. Why exactly the organization was formed in the first
place is a more political problem which I will not address in this thesis.
Initially the organization started with a single project. This meant that the
supporting infrastructure was build for this team. The first project did well,
and the organization started to embark more projects.
At some point a technical team was hired and its sole purpose was to manage
technical infrastructure for the development teams. This included networking,
 virtual machines, build servers and other Continuous Delivery tools. All was
 managed centrally and the build servers and other tools where shared among the
 teams.
When organization growth increased rapidly, problems started to rise.

1. Updating a tool became difficult since multiple teams where depending on it.
2. Updating a tool could mean that some teams had to take action to update their code or workflow.
3. A technical team owned the tools, so development teams could not make changes to them (e.g. install a plugin).
4. Teams had to use the tools that where available, deviating wasn't possible.
5. Project resources and tool installations where managed by hand.

These problems led to unhappy teams that where not performing as well as they could.
When Docker came out, some teams saw this as an opportunity to work around the aforementioned issues.
After some time, the organization embraced Docker as its main virtualization technique and
introduced the concept of private clouds to all development teams.
All teams now have the option to use and configure Continuous Delivery tools as they require.
A team owns its own tool setup and is responsible for proper operation.
On principal this is a valid idea; teams know how they want to develop, thus
they know how they want their Continuous Delivery setup to be configured.
However, this setup came with its own set of problems.

This thesis focuses on defining the set of problems that stem from complete
freedom given to development teams to define, install and configure their own
Continuous Delivery setup.
Secondly, this thesis delivers a set of recommendations in order to solve these
issues. At time of writing some of the recommendations will already have been
implemented.

## Objectives
