up:
	docker-compose -f docker-compose.dev.yml up -d --build

down:
	docker-compose -f docker-compose.dev.yml down

re-up: down up

exec:
	docker-compose -f docker-compose.dev.yml exec app bash