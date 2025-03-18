# Use the official PHP image
FROM php:apache

#install dependencies
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y vim nano

#install pdo_mysql and mysqli
RUN docker-php-ext-install pdo pdo_mysql mysqli && docker-php-ext-enable pdo_mysql mysqli

#copy the source code to the container
COPY . /var/www/html

# Set the working directory in the container
WORKDIR /var/www/html

#command to run the apache server
CMD ["apachectl", "-D", "FOREGROUND"]
