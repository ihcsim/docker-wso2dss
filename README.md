### docker-wso2dss

Docker image to install and run WSO2 Data Service Server.

### Tags

* [3.5.0, latest](https://github.com/ihcsim/docker-wso2dss/tree/dss-3.5.0)
* [3.2.2](https://github.com/ihcsim/docker-wso2dss/tree/dss-3.2.2)
* [3.2.0](https://github.com/ihcsim/docker-wso2dss/tree/dss-3.2.0)
* [3.1.1](https://github.com/ihcsim/docker-wso2dss/tree/dss-3.1.1)

### Description

The dockerfile will:

* Use `wget` to pull the DSS 3.5.0 ZIP from a S3 bucket into the container `/opt` folder.
* Install `zip`.
* Unzip the DSS ZIP.
* Remove the DSS ZIP.
* Expose the container port `9443`, `9763`, `8243`, 8280`.
* Set the `wso2server.sh` start-up script as the container entrypoin.

### Usage

* To pull: `docker pull isim/wso2dss`
* To build: `docker build --rm -t your_image_name github.com/ihcsim/docker-wso2dss`
* To run: `docker run --rm --name your_container_name -p 9443:9443 -p 9763:9763 -p 8243:8243 -p 8280:8280 isim/wso2dss`
* To access web admin console, navigate to `https://localhost:9443`

Follow me on [![alt text][1.1]][1]
[1.1]: http://i.imgur.com/tXSoThF.png (twitter icon with padding)
[1]: http://www.twitter.com/IvanHCSIM
