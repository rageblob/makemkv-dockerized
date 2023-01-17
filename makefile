.PHONY: up down logs cleanup

up:
	@docker-compose up -d
down:
	@docker-compose down
logs:
	@docker-compose logs | grep 'no usable optical drive' -B 1
cleanup:
	@docker system prune
