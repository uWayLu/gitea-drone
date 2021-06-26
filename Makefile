# Makefile
echo:
	@echo
	@echo "		make env    	/* show docker-compose configurations */ "
	@echo "		make up         /* start drone container */ "
	@echo "		make down       /* stop drone container */ "
	@echo "		make restart    /* restart drone container */ "
	@echo

env:
	docker-compose config

up:
	docker-compose up -d

down:
	docker-compose down
	sleep 1

restart: down up