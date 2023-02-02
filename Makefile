DOCKER = docker
DOCKER_COMPOSE = $(DOCKER) compose

up:
	$(DOCKER_COMPOSE) up -d

down:
	$(DOCKER_COMPOSE) down

build:
	$(DOCKER_COMPOSE) build

reset: down build up

new:
	docker exec php composer create-project symfony/skeleton server
	sudo chmod -R 777 server/var
	sudo chown -R 1000:1000 server
