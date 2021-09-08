start:
	docker-compose up

bash:
	docker run -ti app bash

install:
	docker-compose run app npm install

build:
	docker build -t red143/devops-for-programmers-project-lvl1 -f Dockerfile.production .

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

push:
	docker push red143/devops-for-programmers-project-lvl1
