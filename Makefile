build:
	docker build -t app .

start:
	docker run -d -p 8080:8080 app

bash:
	docker run -ti app bash
