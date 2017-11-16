# build
docker build -t exercism-scala .
# repl
docker run -it exercism-scala /root/scala-2.12.2/bin/scala
# test
docker run -it exercism-scala sbt test
# lint
