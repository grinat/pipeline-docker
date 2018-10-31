FROM docker:18.06

# Add python pip and bash
RUN apk add --no-cache py-pip bash curl git openssl wget

# Install docker-compose via pip
RUN pip install --no-cache-dir docker-compose

# Install php and composer
RUN apk add --no-cache  php7 php7-phar php7-curl php7-iconv php7-json php7-json php7-openssl
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

# Install curl, git and etc.
RUN apk add --no-cache openssh nano
