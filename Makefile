IMAGE_NAME:=app-linpack/1000d

build:
	docker build --network=host -t $(IMAGE_NAME) .

run:
	# docker run -it --rm -v ${PWD}:/src --entrypoint bash $(IMAGE_NAME)
	# docker run -it --rm --entrypoint bash $(IMAGE_NAME)
	docker run -it --rm $(IMAGE_NAME) /src/linpack-1000d

clean:
	docker rmi $(IMAGE_NAME)