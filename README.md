# Graph Walker Online Path

## Description
This repo contains __Graphwalker command line interface__. It is packed into a docker container and
stated in ONLINE mode. The goal is to make it possible to generate pathes for model based tests
during runtime. The container is used to calculate the next step in the model.


## Usage
To run the container use the following command:

```sudo docker run -it -p 8887:8887 gitlab-registry.eurofunk.com/eocs/sandbox/graph-walker-online-path:main```
