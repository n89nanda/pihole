ps: 
	docker ps
run: ps
	docker-compose up -d
	echo 'piHole Admin URL:''http://localhost/admin/index.php'
start: run
	docker ps
	echo 'Update DNS:''/etc/resolv.conf'
	cat /etc/resolv.conf
stop: ps
	docker compose down
	echo 'Update DNS:''/etc/resolv.conf'
	cat /etc/resolv.conf