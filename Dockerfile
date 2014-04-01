#
# WSO2 DSS 3.1.1.
#
FROM ubuntu:12.04
MAINTAINER isim, ihcsim@gmail.com

# copy zip from local folder to container
ADD wso2dss-3.1.1.zip /opt/wso2dss-3.1.1.zip

# install zip
RUN apt-get update
RUN apt-get install -y zip

# unzip, then clean up
RUN unzip /opt/wso2dss-3.1.1.zip -d /opt
RUN rm /opt/wso2dss-3.1.1.zip

EXPOSE 9443
CMD ["/opt/wso2dss-3.1.1/bin/wso2server.sh","start"]
