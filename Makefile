.PHONY: up down down-v clean build

up: 
	docker compose up -d

down:
	docker compose down
	

down-v:
	docker compose down -v
	docker volume prune -f
	docker network prune -f

clean:
	docker compose down --rmi all --volumes --remove-orphans
	docker volume prune -f
	docker network prune -f

build:
	docker compose build

no-cache:
	docker compose build --no-cache

log-b:
	docker compose logs backend

log-f:
	docker compose logs frontend

re-b:
	docker compose restart backend
