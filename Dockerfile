FROM devopsedu/webapp:latest

COPY website /var/www/html/

RUN sudo DEBIAN_FRONTEND=noninteractive apt update && \
    apt install -y php

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
