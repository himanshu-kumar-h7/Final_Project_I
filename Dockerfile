FROM devopsedu/webapp:latest
COPY website /var/www/html/
 RUN dpkg --add-architecture i386 \
-&& apt-get update && apt-get install -y --no-install-recommends \
+&& echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections \
+&& apt-get update && apt-get install -y -q --no-install-recommends \
                g++-multilib \
                libssl-dev:i386 \
                libcrypto++-dev:i386 \
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
