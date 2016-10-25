FROM python:2.7

ENV DEBIAN_FRONTEND noninteractive
ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_VERSION 6.9.1

RUN apt-get update \
  && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
  && apt-get -y install krb5-config krb5-user python-ldap libsasl2-dev python-dev libldap2-dev libssl-dev xmlsec1 nodejs \
  && rm -rf /var/lib/apt/lists/*

RUN npm install -g yarn

