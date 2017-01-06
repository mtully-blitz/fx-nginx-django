GIT_SHA := $(shell git rev-parse HEAD | cut -c 1-8)


docker-fx:
	docker build -t fxnetworks/fx-cms-nginx-django:$(GIT_SHA) .
	docker tag fxnetworks/fx-cms-nginx-django:$(GIT_SHA) fxnetworks/fx-cms-nginx-django:latest
	docker push fxnetworks/fx-cms-nginx-django:latest

docker-blitz:
	docker build -t blitzagency/fx-cms-nginx-django:$(GIT_SHA) .
	docker tag blitzagency/fx-cms-nginx-django:$(GIT_SHA) blitzagency/fx-cms-nginx-django:latest
	docker push blitzagency/fx-cms-nginx-django:latest
