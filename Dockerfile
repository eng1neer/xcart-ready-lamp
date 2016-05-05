FROM tutum/lamp:latest

ADD 000-default.conf /etc/apache2/sites-available/000-default.conf

RUN apt-get update
RUN apt-get install -y curl php5-gd php5-curl

EXPOSE 80 3306

CMD ["/run.sh"]
