GIT_SHA := $(shell git rev-parse HEAD | cut -c 1-8)


docker:
	docker build -t fxnetworks/fx-cms-nginx-django:$(GIT_SHA) .
	docker tag -f fxnetworks/fx-cms-nginx-django:$(GIT_SHA) fxnetworks/fx-cms-nginx-django:latest
	#docker push fxnetworks/fx-cms-publisher:$(GIT_SHA)
	docker push fxnetworks/fx-cms-nginx-django:latest
