FROM tomcat:8.5

MAINTAINER phithon <root@leavesongs.com>

ARG ST2_VERSION=2.3.15.1
ARG WEB_DIR=/usr/local/tomcat/webapps

RUN set -ex \
    && chmod a+x /usr/local/tomcat/bin/*.sh \
    \ 
    && wget https://repo1.maven.org/maven2/org/apache/struts/struts2-rest-showcase/${ST2_VERSION}/struts2-rest-showcase-${ST2_VERSION}.war -O /tmp/struts2-showcase-${ST2_VERSION}.war \
    && mv /tmp/struts2-showcase-${ST2_VERSION}.war ${WEB_DIR}/ROOT.war  \
    && rm -rf /tmp/struts*

EXPOSE 8080
