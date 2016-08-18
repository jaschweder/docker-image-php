FROM jaschweder/php

MAINTAINER Jonathan A. Schweder "jonathanschweder@gmail.com"

WORKDIR /usr/src

RUN wget "https://getcomposer.org/composer.phar" \
    && mv ./composer.phar /usr/local/bin/composer \
    && chmod a+x /usr/local/bin/composer

WORKDIR /var/www

VOLUME /var/www

EXPOSE 80

CMD ["composer", "--version"]
