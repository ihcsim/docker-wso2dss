# docker-wso2dss

[ ![Codeship Status for ihcsim/docker-wso2dss](https://app.codeship.com/projects/0225c150-c36d-0134-3410-2621c39d51df/status?branch=master)](https://app.codeship.com/projects/197585)

Docker image to install and run WSO2 Data Service Server.

## Tags

* [3.5.1, latest](https://github.com/ihcsim/docker-wso2dss/tree/dss-3.5.1)
* [3.5.0](https://github.com/ihcsim/docker-wso2dss/tree/dss-3.5.0)
* [3.2.2](https://github.com/ihcsim/docker-wso2dss/tree/dss-3.2.2)
* [3.2.0](https://github.com/ihcsim/docker-wso2dss/tree/dss-3.2.0)
* [3.1.1](https://github.com/ihcsim/docker-wso2dss/tree/dss-3.1.1)

## Description
The dockerfile will:

* Use `wget` to pull the DSS 3.5.1 ZIP from a S3 bucket into the container `/opt` folder.
* Install `zip`.
* Unzip the DSS ZIP.
* Remove the DSS ZIP.
* Expose the container port `9443`, `9763`, `8243`, `8280`.
* Set the `wso2server.sh` start-up script as the container entrypoin.

## Usage
To run the WSO2 DSS:
```sh
$ docker run -d --name dss -p 9443:9443 isim/wso2dss
```
To access web admin console, navigate to https://localhost:9443 using your web browser.

## License
Refer to the [LICENSE](LICENSE) file. WSO2 license can be found [here](http://wso2.com/licenses).
