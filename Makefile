build:
	docker build -t app .

start:
	docker run -d -p 8080:8080 app

bash:
	docker run -ti app bash

install:
	docker-compose run app npm install

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

run:
	docker-compose up
