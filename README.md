# docker

Docker files for create containers

## docker-compose.mysql_5_7_40.yml

MySQL 5.7.40

## docker-compose.mysql_8_4_3.yml

MySQL 8.4.3

## docker-compose.opcodesio_log_viewer.yml

Container with an interface for viewing Laravel application logs

See https://log-viewer.opcodes.io/docs/3.x/

See https://github.com/opcodesio/log-viewer

See https://packagist.org/packages/opcodesio/log-viewer

## Problems

### Build

Error on build like "Could not resolve host: xxx" then RUN execute.

Check internet access from container. Check /etc/docker/daemon.json for "dns": ["8.8.8.8", "8.8.4.4"]

### MySQL

Error "Cannot connect to the Docker daemon at unix:///home/user/.docker/desktop/docker.sock. Is the docker daemon running?"

Check rights on dir "data" on host.
