default:
	exit 0

clean:
	- docker-compose down

template:
	ansible-playbook build.yml

build:
	docker-compose build

sensu: clean template build
	docker-compose up
