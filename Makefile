default:
	exit 0

clean:
	- docker-compose down
	- vagrant destroy -f

template:
	ansible-playbook build.yml

build:
	docker-compose build

compose: clean
	docker-compose up -d

vagrant: clean
	vagrant up --no-provision
	vagrant provision

sensu: clean template build compose vagrant
