from local-code-server:latest
# put what you need for your dev environment here
RUN apt-get update
RUN apt-get install -y vim fish docker.io postgresql-client
# ports and volumes
EXPOSE 8443