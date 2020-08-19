FROM tomcat:8.5

MAINTAINER phithon <root@leavesongs.com>

ARG ST2_VERSION=2.3.30
ARG WEB_DIR=/usr/local/tomcat/webapps

RUN set -ex \
    && rm -rf ${WEB_DIR}/* \
    && chmod a+x /usr/local/tomcat/bin/*.sh \
    \
    && wget http://archive.apache.org/dist/struts/${ST2_VERSION}/struts-${ST2_VERSION}-apps.zip -O /tmp/struts-${ST2_VERSION}-apps.zip \
    && unzip /tmp/struts-${ST2_VERSION}-apps.zip -d /tmp/ \
    && mv /tmp/struts-${ST2_VERSION}/apps/struts2-showcase.war ${WEB_DIR}/ROOT.war  \
    && rm -rf /tmp/struts*

EXPOSE 8080
