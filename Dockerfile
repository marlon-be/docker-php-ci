FROM marlonbe/docker-php:7.3
MAINTAINER PHP Marlon <php@marlon.be>

RUN apt-get update && \
    apt-get install -y ant sqlite3 git-core && \
    apt-get clean -y

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

ADD php.ini /etc/php/7.3/cli/conf.d/

ENV PATH /root/.composer/vendor/bin:$PATH
