IMAGE=logs-app:latest
PORT=3000
VOLUME=/app/data

run: build
	docker run -d -p $(PORT):3000 -v logs:$(VOLUME) --rm --name logs-app $(IMAGE)

build:
	docker build -t logs-app:latest .

rmi:
	docker rmi logs-app:latest
