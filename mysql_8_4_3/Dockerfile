FROM mysql:8.4.3

RUN microdnf install epel-release
RUN microdnf update
RUN microdnf install mc
RUN microdnf install ncdu
RUN microdnf install htop
RUN microdnf install tmux

COPY ./my.cnf /etc/mysql/conf.d/