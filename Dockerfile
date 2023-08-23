FROM ubuntu
RUN apt-get update -y && apt-get install -y apache2
RUN apt-get install -y zip && apt-get install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page295/handtime.zip /var/www/html
WORKDIR /var/www/html
RUN unzip handtime.zip
RUN cp -rvf handtime-html/* .
RUN rm -rf handtime.zip handtime-html
CMD ["apache2ctl","-D","FOREGROUND"]
EXPOSE 80
