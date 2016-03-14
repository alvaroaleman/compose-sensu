default:
	exit 0

clean:
	- docker-compose down
	- docker rmi sensu_base
	- docker rmi sensu_server
	- docker rmi senu_api

template:
	ansible-playbook build.yml

sensu: clean template
	docker-compose up
