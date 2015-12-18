#
# WSO2 DSS 3.2.0
#
FROM isim/oraclejava:1.7.0_80
MAINTAINER Ivan Sim, ihcsim@gmail.com

RUN wget -P /opt https://s3-us-west-2.amazonaws.com/wso2-stratos/wso2dss-3.2.2.zip && \
    apt-get update && \ 
    apt-get install -y zip && \
    apt-get clean && \
    unzip /opt/wso2dss-3.2.2.zip -d /opt && \
    rm /opt/wso2dss-3.2.2.zip

EXPOSE 9443 9763 8243 8280
ENTRYPOINT ["/opt/wso2dss-3.2.2/bin/wso2server.sh"]
