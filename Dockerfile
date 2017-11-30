FROM ruby:2.4

# Set the locale
RUN apt-get clean \
 && apt-get update \
 && apt-get install -y locales \
 && locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get -y update && apt-get install -y mysql-client openssh-client rsync
