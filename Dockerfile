#
# WSO2 DSS 3.2.0
#
FROM dockerfile/java
MAINTAINER isim, ihcsim@gmail.com

# set JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle

# copy zip from local folder to container
RUN wget -P /opt https://s3-us-west-2.amazonaws.com/wso2-stratos/wso2dss-3.2.0.zip

# install zip
RUN apt-get install -y zip
RUN apt-get clean

# unzip, then clean up
RUN unzip /opt/wso2dss-3.2.0.zip -d /opt
RUN rm /opt/wso2dss-3.2.0.zip

EXPOSE 9443
CMD ["/opt/wso2dss-3.2.0/bin/wso2server.sh"]

