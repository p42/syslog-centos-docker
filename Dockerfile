FROM project42/s6-centos:centos7
MAINTAINER Jordan Clark mail@jordanclark.us

RUN yum -y update && \
    yum -y install epel-release && \
    yum -y install syslog-ng && \
    yum -y remove epel-release && \
    yum -y clean all

COPY container-files /

ENTRYPOINT ["/init"]
