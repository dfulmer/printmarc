FROM debian:bullseye

LABEL maintainer="dfulmer@umich.edu"

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  build-essential\
  perl\
  cpanminus
RUN cpanm MARC::Batch
RUN cpanm MARC::Lint
RUN echo 'alias printmarc="perl printmarc.pl"' >> ~/.bashrc

WORKDIR /app
ENV PERL5LIB=/app/lib
