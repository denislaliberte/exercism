# Clojure

image :
https://hub.docker.com/_/clojure

"""
# build
docker build -t exercism-clj .

# repl
docker run -it exercism-clj lein repl

# test
docker run -it -v $(pwd)/hello-world/:/test exercism-clj  lein test

# lint
docker run -it -v $(pwd)/hello-world/:/test exercism-clj  lein eastwood
"""
