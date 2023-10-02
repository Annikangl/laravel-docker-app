test:
	docker compose exec php-fpm php artisan test

migrate:
	docker compose exec php-fpm php artisan migrate

migrate-rollback:
	docker compose exec php-fpm php artisan migrate:rollback

migrate-refresh:
	docker compose exec php-fpm php artisan migrate:refresh --seed

docker-build:
	docker compose up -d --build

docker-up:
	docker compose up -d

docker-down:
	docker compose down

copy-project:
	cp -r /home/ivan/projects/onerent/ /mnt/c/OSPanel/domains/

dump-db:
	docker compose exec mysql /usr/bin/mysqldump -u $USER --password=$PASSWORD jai > backup_$(date +%Y-%m-%d-%H.%M.%S).sql --no-tablespaces

restore-db:
	cat backup_.sql | docker compose exec -i mysql /usr/bin/mysql -u $USER --password=$PASSWORD $DB_NAME
