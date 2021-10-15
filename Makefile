build:
	docker-compose build app

install:
	@make build
	docker-compose up -d
	docker-compose exec app composer install
	docker-compose exec app php artisan key:generate
