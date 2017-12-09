# Python 2.7

# build

docker build -t exercism-py .

# repl

docker run -it exercism-py

# test

docker run -it -v $(pwd)/python/hello-world:/test exercism-py py.test

# Lint

docker run -it -v $(pwd)/python/hello-world:/test exercism-py flake8
