FROM clickhouse/clickhouse-server:23.12-alpine

RUN apk update
RUN apk upgrade

# Install packages 
RUN apk add mc
RUN apk add ncdu
RUN apk add htop
RUN apk add tmux