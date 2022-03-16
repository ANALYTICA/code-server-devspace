provision:
	sudo apt-get update
	sudo yum install fish vim docker.io

local_image:
	git clone https://github.com/linuxserver/docker-code-server.git || true
	cd docker-code-server && \
	docker build \
	--platform=linux/amd64 \
	--no-cache \
	--pull \
	-t local-code-server:latest .
pwd:
	docker exec -it code-server-devspace bash -c "cat ~/.config/code-server/config.yaml"

it-up: 
	docker-compose up --build
it-stop: 
	docker-compose down