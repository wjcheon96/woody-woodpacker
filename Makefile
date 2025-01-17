DOCKER_COMPOSE	:=	docker-compose
DOCKER_COMPOSE_FILE	:=	docker-compose.yml
PROJECT_NAME	:=	woody-woodpacker

all:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up --build -d

up:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up

down:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down

clean: down
	docker system prune -f --all

fclean: clean
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down --volumes --rmi all

re:
	make fclean
	make all

.PHONY: all up down clean fclean re 
