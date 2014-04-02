#
# WSO2 DSS 3.1.1.
#
FROM dockerfile/java
MAINTAINER isim, ihcsim@gmail.com

# set JAVA_HOME
RUN echo "JAVA_HOME=/usr/lib/jvm/java-7-oracle" >> /etc/environment
RUN /bin/bash -c "source /etc/environment"

# install zip
RUN apt-get install -y zip
RUN apt-get clean

# copy zip from local folder to container
ADD wso2dss-3.1.1.zip /opt/wso2dss-3.1.1.zip

# unzip, then clean up
RUN unzip /opt/wso2dss-3.1.1.zip -d /opt
RUN rm /opt/wso2dss-3.1.1.zip

EXPOSE 9443
CMD ["/opt/wso2dss-3.1.1/bin/wso2server.sh","start"]
