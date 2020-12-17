FROM marlonbe/docker-php:7.4
MAINTAINER PHP Marlon <php@marlon.be>

RUN apt-get update && \
    apt-get install -y ant sqlite3 git-core unzip mysql-client php7.4-apcu && \
    apt-get clean -y

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

ADD php.ini /etc/php/7.4/cli/conf.d/

RUN apt-add-repository multiverse && apt-get update

ENV PATH /root/.composer/vendor/bin:$PATH
