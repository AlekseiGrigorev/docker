FROM mysql:5.7.40

RUN yum install mc -y
RUN yum install ncdu -y
RUN yum install htop -y
RUN yum install atop -y
RUN yum install tmux -y

COPY ./my.cnf /etc/mysql/conf.d/