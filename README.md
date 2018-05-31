Datascience Plaground
=======================

This repo is a example setup for data science exercises.

Steps to Use

## Install docker

* For Mac: https://docs.docker.com/docker-for-mac/
* For Windows: https://docs.docker.com/docker-for-windows/
* For Linux: https://docs.docker.com/engine/installation/

After installing Docker check that that it is running by typing `docker --version` in a terminal whcih should return something like the below:

```bash
docker -v
Docker version 17.12.0-ce, build c97c6d6
```

```bash
docker-compose -v
docker-compose version 1.18.0, build 8dd22a9
```

## Run Docker compose


```sh
docker-compose up
```

You should be able to access 

* Radiant at <a href="http://127.0.0.1:9080" target="_blank">http://127.0.0.1:9080</a>
* Rstudio at <a href="http://127.0.0.1:8787" target="_blank">http://127.0.0.1:8787</a>
* Jupyter Notebook at <a href="http://127.0.0.1:8888" target="_blank">http://127.0.0.1:8888</a>
The password token to the notebook is <strong>sandiego</strong> . It is controled by the JUPYTER_TOKEN environment variable set in docker-compose.yml 

The dropbox folder ~/Dropbox on the computer running docker compose  will be accessible from all the containers  in READONLY mode.




