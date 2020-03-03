FROM fedora
MAINTAINER anand
ARG web=httpd
ENV server=$web
ENV color=black
RUN yum install $server -y
WORKDIR /opt/
COPY . .
EXPOSE 80
ENTRYPOINT ["/bin/bash","/opt/entry.sh"]

