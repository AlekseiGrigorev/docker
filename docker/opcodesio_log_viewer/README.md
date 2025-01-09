# Container with an interface for viewing Laravel application logs

## Configured to read logs from the application directory storage/logs

See docker-compose.opcodesio_log_viewer.yml

## See also

https://log-viewer.opcodes.io/docs/3.x/

https://github.com/opcodesio/log-viewer

https://packagist.org/packages/opcodesio/log-viewer

## Build and run

docker compose -f "docker-compose.opcodesio_log_viewer.yml" up -d --build 

## Access details

url: http://localhost:8000/log-viewer (see opcodesio_log_viewer.Dockerfile, docker-compose.opcodesio_log_viewer.yml)

login admin@email.com<br />password: admin<br />(see opcodesio_log_viewer.Dockerfile)