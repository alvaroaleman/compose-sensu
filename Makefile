default:
	exit 0

clean:
	- docker-compose down

build_clean: clean
	- docker rmi sensu_server

template:
	ansible-playbook build.yml

sensu: clean template
	docker-compose up
