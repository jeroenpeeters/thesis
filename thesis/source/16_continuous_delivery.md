
# What is Continuous Delivery

In this chapter I will discuss what people generally understand by the term
Continuous Delivery.

## Continuous Integration

Continuous Delivery is the natural evolution of Continuous Integration (CI).
Practicing Continuous Integration is an absolute necessity before you can start
with Continuous Delivery.

CI focuses on integrating different software branches into a main line. This
generally occurs when developers make changes to the main line in their
development environments.

To do CI one needs at least the following systems:

  1. Revision Control System
  2. Continuous Integration Server

Figure \ref{overview_ci} depicts the dependency
  relationship between the CI systems.

![Overview Continuous Integration \label{overview_ci}](figures/arch-overview-CI.png)

### Revision Control System

The RCS covers the integration of code branches into a main line.

### Continuous Integration Server

A CI-server, sometimes referred to as the build server, automatically performs
the build process when a code branch is integrated into the main line. This
ensures that the software in the main line can still be build according to
predefined rules. Furthermore it ensures that the change doesn't depend on
development specific environments, reducing the 'it builds on my machine'-problem.
Preferably the CI-server also executes tests to ensure that previous
functionality is still intact.


## Continuous Delivery

Since Continuous Delivery (CD) builds on top of CI it reuses its systems.
