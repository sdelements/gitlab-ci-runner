FROM python:2.7

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
  && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
  && apt-get -y install sendmail krb5-config krb5-user python-ldap libsasl2-dev python-dev libldap2-dev libssl-dev xmlsec1 libfontconfig nodejs \
  && apt-get -y install --upgrade python3 \
  && apt-get -y install shellcheck \
  && rm -rf /var/lib/apt/lists/* \
  && curl -fsSL get.docker.com | sh \
  && docker --version \
  && curl -L https://github.com/docker/compose/releases/download/1.15.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose \
  && chmod +x /usr/local/bin/docker-compose \
  && docker-compose --version \
  && npm install -g yarn \
  && npm install -g grunt-cli \

