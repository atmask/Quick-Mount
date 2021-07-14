IMAGE = quick-mount


build:
	echo "Building ${IMAGE} image"
	docker build -t ${IMAGE} .

container:
	echo "Running ${IMAGE} image. Enjoy your clean work station :)"
	docker run -d --name ${IMAGE} ${IMAGE}

mount:
	echo "Running ${IMAGE} image with ${dir mounted}. Enjoy your clean work station :)"
	docker run -d --name ${IMAGE} --mount type=bind,source=${dir},target=/app ${IMAGE}

entry:
	echo "Entering work station"
	docker exec -it ${IMAGE} /bin/bash

kill:
	echo "Killing ${IMAGE} container"
	docker kill ${IMAGE} 

clean:
	echo "Removing ${IMAGE} container"
	docker rm ${IMAGE} 
