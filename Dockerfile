#
# WSO2 DSS 3.2.0
#
FROM java:7
MAINTAINER Ivan Sim, ihcsim@gmail.com

RUN wget -P /opt https://s3-us-west-2.amazonaws.com/wso2-stratos/wso2dss-3.2.0.zip && \
    apt-get update && \ 
    apt-get install -y zip && \
    apt-get clean && \
    unzip /opt/wso2dss-3.2.0.zip -d /opt && \
    rm /opt/wso2dss-3.2.0.zip

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
EXPOSE 9443
CMD ["/opt/wso2dss-3.2.0/bin/wso2server.sh"]

