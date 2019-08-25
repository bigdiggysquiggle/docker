if ($OSTYPE == 'linux-gnu'); then
	eval $(docker-machine env default)
	docker run --privileged -it --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" doom
else
	IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
	docker run --privileged -it -e DISPLAY=$IP:0 -v /tmp/.X11-unix:/tmp/.X11-unix doom
fi
