# Elixir

'''
# build the image
docker build -t exercism-exs .

# Elixir repl
docker run -it --rm exercism-exs

# run a test
docker run -it -v $(pwd):/test exercism-exs elixir /test/hello-world/hello_world_test.exs


# use dogma linter
docker run -it -v $(pwd):/test exercism-exs mix dogma
'''
