FROM isim/oraclejava:1.8.0_101
MAINTAINER Ivan Sim, ihcsim@gmail.com

ARG DSS_VERSION=${DSS_VERSION:-3.5.1}
ARG VCS_REF
LABEL org.label-schema.vcs-ref=${VCS_REF} \
      org.label-schema.vcs-url="https://github.com/ihcsim/docker-wso2dss"

RUN wget -P /opt https://s3-us-west-2.amazonaws.com/wso2-stratos/wso2dss-${DSS_VERSION}.zip && \
    apt-get update && \
    apt-get install -y zip && \
    apt-get clean && \
    unzip /opt/wso2dss-${DSS_VERSION}.zip -d /opt && \
    rm /opt/wso2dss-${DSS_VERSION}.zip

WORKDIR /opt/wso2dss-${DSS_VERSION}/
EXPOSE 9443 9763 8243 8280
ENTRYPOINT ["bin/wso2server.sh"]
