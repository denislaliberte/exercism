FROM clojure
USER root
VOLUME /test
COPY ./profile.clj /root/.lein/profiles.clj
COPY . /test
WORKDIR /test/hello-world
RUN lein eastwood
