ps: 
	docker ps
run: ps
	docker-compose up -d
	echo 'piHole Admin URL:''http://localhost/admin/index.php'
start: run
	docker ps
stop: ps
	docker compose down