FROM ubuntu:latest
LABEL "Author"="kester"
LABEL "Project"="coffeeShop"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install git -y && apt install apache2 -y
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
WORKDIR /var/log/apache2
VOLUME /var/log/apache2
ADD coffee.tar.gz /var/www/html



