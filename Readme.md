## Apache Hadoop 2.7.7 Docker images
**[See all here](https://hub.docker.com/r/brpedromaia/hadoop/)**    
# Hadoop Datanode docker image

***Note: This docker image requires *docker network running* and the following containers running: ***
    01. datanode
    02. Yarn


# Build the image

If you'd like to try directly from the Dockerfile you can build the image as:

```
docker build  -t brpedromaia/hadoop-datanode:latest datanode/ 
```
# Pull the image

The image is also released as an official Docker image from Docker's automated build repository - you can always pull or refer the image when launching containers.

```
docker pull brpedromaia/datanode
```

# Start a container

***In order to use the Docker image you have just build or pulled use:***

```
docker run -itd --net=dockerlan --hostname=datanode --name=datanode brpedromaia/hadoop-datanode
```

***To enter in container:***

```
docker exect -it hadoop-datanode bash
```

**Make sure that SELinux is disabled on the host. If you are using boot2docker you don't need to do anything.**

```
docker run -it --net=dockerlan --hostname=datanode --name=datanode brpedromaia/hadoop-datanode -bash
```

**You would like to have a tunnel port exposed to localhost:**

```
docker run -it --net=dockerlan --hostname=datanode -p 10000:10000 -p 10002:10002 --name=datanode brpedromaia/hadoop-datanode 
```

# Testing

You can found in browser:

```
http://localhost:50070 
```


## Automate everything

To automate everything add code before "while" on datanode-entrypoint.sh 