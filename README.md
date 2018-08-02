# project42/syslog-centos

[![pipeline status](https://git.jordanclark.us/devops/syslog-centos-docker/badges/master/pipeline.svg)](https://git.jordanclark.us/devops/syslog-centos-docker/commits/master)

## Introduction
A docker image based on CentOS with the S6 Overlay that redirects /dev/log to stdout & stderr for docker happiness!

### What is CentOS Linux?

Community Enterprise Operating System (CentOS) is a community-driven free software effort focused on delivering a robust, open source, enterprise class Linux distribution functionally compatible upstream with Red Hat Enterprise Linux (RHEL) sources.

### What is the s6-overlay?
The [s6-overlay project](https://github.com/just-containers/s6-overlay) is a series of init scripts and utilities to ease creating Docker images using s6 as a process supervisor.  The s6-overlay makes it easy to take advantages of s6 while still operate like other Docker images.  The s6 init system provides many helpful tools to initialize and manage processes as the Docker container starts.

### Tags

| Tag | Description |
|---|---|
| latest | The most current build.  Images based on latest may change often an possibly could break.  Test your images |
| 7 | Latest CentOS 7 series |
| 6 | Latest CentOS 6 series |
| 7.5.1804 | CentOS Linux 7.5.1804 built on 2018-08-02 |
| 6.9 | CentOS Linux 6.9 built on 2018-08-02 |

### Issues

I'm sure there are some but currently I'm unaware of current issues.  If you find an issue please let me know on [GitHub](https://github.com/p42/syslog-centos-docker/issues)

### Prerequisites

A working docker daemon would be helpful to utilize this image.

## How to use this image

This image is meant to be used as a base to build custom docker images from.  It's value is that it takes the base CentOS linux image and adds the s6 overlay.

### Usage

###### Running a quick CentOS linux container

~~~
docker run --rm -ti project42/syslog-centos:latest bash
~~~

This will present you with a shell on fresh container that will stop and remove itself when you exit the container.

###### Dockerfile that is based of of this image.

~~~
FROM project42/syslog-centos:latest

RUN yum -y update && \
yum -y install cowsay

ENTRYPOINT ["/init"]
~~~

## Configuration

### Configuration Parameters
| Environment | Description |
| --- | --- |
| TZ | Sets the container Timezone; example: CST6CDT default: UTC |  

## Maintenance

### Shell Access

This image includes the bash shell and when running in detached mode can be connected to with:

~~~
docker exec -ti <container> bash
~~~


## References

Maintainer: [https://jordanclark.us](https://jordanclark.us)

Maintainer's git repo: [https://git.jordanclark.us/devops/syslog-centos-docker](https://git.jordanclark.us/devops/syslog-centos-docker)

Github Issues: [https://github.com/p42/syslog-centos-docker/issues](https://github.com/p42/syslog-centos-docker/issues)

CentOS Linux: [https://www.centos.org](https://www.centos.org)

s6-overlay: [https://github.com/just-containers/s6-overlay](https://github.com/just-containers/s6-overlay)

s6 supervisor: [http://www.skarnet.org/software/s6/index.html](http://www.skarnet.org/software/s6/index.html)
