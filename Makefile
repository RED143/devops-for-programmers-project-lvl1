build:
	docker build -t app .

start:
	docker run -d -p 8080:8080 app

bash:
	docker run -ti app bash

install:
	docker-compose run app npm install

build-prod:
	docker build -t red143/devops-for-programmers-project-lvl1 -f Dockerfile.production .

test-prod:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

start-local:
	docker-compose -f docker-compose.override.yml up

push:
	docker push red143/devops-for-programmers-project-lvl1
