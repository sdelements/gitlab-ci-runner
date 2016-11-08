FROM python:2.7

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
  && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
  && apt-get -y install krb5-config krb5-user python-ldap libsasl2-dev python-dev libldap2-dev libssl-dev xmlsec1 libfontconfig nodejs \
  && rm -rf /var/lib/apt/lists/*

RUN npm install -g yarn

# Nightwatch
RUN git clone https://github.com/nightwatchjs/nightwatch.git \
  && cd nightwatch \
  && npm install
