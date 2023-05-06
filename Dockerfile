FROM devopsedu/webapp:latest
COPY website /var/www/html/
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
 
