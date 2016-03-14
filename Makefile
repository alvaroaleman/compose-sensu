default:
	exit 0

clean:
	- docker-compose down

template:
	ansible-playbook build.yml

sensu: clean template
	docker-compose up
