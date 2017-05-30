# GO

# build

docker build -t exercism-go .

# repl

docker run -it exercism-go gore

# test

docker run -it -v $(pwd)/go/hello-world:/test exercism-go go test

# Lint

docker run -it -v $(pwd)/go/hello-world:/test exercism-go golint .
