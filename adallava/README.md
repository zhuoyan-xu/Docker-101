## Build docker image

### 1. set Dockerfile in test-adallava dir
run

``` bash
docker build -t zhuoyanxu/adallava:v1.0 .
docker tag zhuoyanxu/adallava:v1.1 zhuoyanxu/adallava:latest
```


### 2. test run locally
```
docker run -it --gpus all --rm=true zhuoyanxu/adallava:v1.0 /bin/bash
```
or `run test.sh`

### 3. push to dockerhub
```bash
docker push zhuoyanxu/adallava:v1.0
docker push zhuoyanxu/adallava:latest

# or
docker push zhuoyanxu/adallava --all-tags
```

