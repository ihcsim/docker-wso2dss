#
# WSO2 DSS 3.2.0
#
FROM isim/oraclejava:1.7.0_80
MAINTAINER Ivan Sim, ihcsim@gmail.com

ENV VERSION=3.5.0

RUN wget -P /opt https://s3-us-west-2.amazonaws.com/wso2-stratos/wso2dss-$VERSION.zip && \
    apt-get update && \ 
    apt-get install -y zip && \
    apt-get clean && \
    unzip /opt/wso2dss-$VERSION.zip -d /opt && \
    rm /opt/wso2dss-$VERSION.zip

WORKDIR /opt/wso2dss-$VERSION/
EXPOSE 9443 9763 8243 8280
ENTRYPOINT ["bin/wso2server.sh"]
