build:
	docker-compose build app

start:
	@make build
	docker-compose up -d
	docker-compose exec app composer install
	docker-compose exec app php artisan key:generate

stop:
	docker-compose down
