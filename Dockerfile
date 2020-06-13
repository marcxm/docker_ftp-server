FROM debian:stable-slim

MAINTAINER "Marc Smith" <marc_smith@gmx.com>

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root
RUN apt-get update
RUN apt-get install -y tmux vsftpd
RUN adduser --disabled-password --gecos "" marc
ADD start.sh /start.sh
RUN chmod +x /start.sh
RUN echo "marc:mypassword"|chpasswd
RUN mkdir /var/run/vsftpd/
RUN mkdir /var/run/vsftpd/empty
RUN chmod +x /start.sh
RUN echo "" > /etc/motd
CMD ["/start.sh"]
EXPOSE 21

