FROM elixir:1.3.2

MAINTAINER Denis Laliberté <denis.laliberte@gmail.com>

USER root

VOLUME /test
WORKDIR /test

COPY *.exs /test
RUN mix local.hex --force
RUN  mix deps.get
