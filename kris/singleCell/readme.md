### write Dockerfile to create image

——— create image once we have Dockerfile

make sure dir contains the correct Dockerfile

```
docker build -t zhuoyanxu:single_cell  .
```


Explore the docker image we created
First open a interactive shell:

```
docker run --rm=true -it zhuoyanxu:single_cell bash
```

Then find out which packages are available:

```
which python
ipython
import torch
```

Use `ls -l` on the path to check it

push package to [zhuoyanxu/single_cell:latest](https://hub.docker.com/repository/docker/zhuoyanxu/single_cell) and create customized image
 
 ```
 docker push username/imagename:tag
 ```

Test it:

```
docker run --user $(id -u):$(id -g) --rm=true -it \

 -v $(pwd):/scratch -w /scratch \

 zhuoyanxu:single_cell /bin/bash
```

### test on chtc

go to ```/home/zxu444/tutorial``` on chtc
```
cd testSingleCellDocker
condor_submit -i build.sub
```





