docker run --gpus all --user $(id -u):$(id -g) --rm=true -it \
	-v $(pwd):/scratch -w /scratch \
	zhuoyanxu/adallava:latest /bin/bash

