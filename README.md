docker-wso2dss3.2.0
===================

Docker image to install and run WSO2 Data Service Server 3.2.0. It uses the [dockerfile/java](https://index.docker.io/u/dockerfile/java/) as its base image.

[![endorse](https://api.coderwall.com/ivanhcsim/endorsecount.png)](https://coderwall.com/ivanhcsim)

The dockerfile will:
* Set the `JAVA_HOME` environmental variable.
* Use `wget` to pull the DSS 3.2.0 ZIP from a S3 bucket into the container `/opt` folder.
* Install `zip`.
* Unzip the DSS 3.2.0 ZIP.
* Remove the DSS 3.2.0 ZIP.
* Expose the container port `9443`.
* Set the DSS `wso2server.sh` start-up script as the container start-up command.

To build: `docker build --rm -t your_image_name .`

