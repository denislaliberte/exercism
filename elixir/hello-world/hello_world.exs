defmodule HelloWorld do
  @moduledoc """
  Elixir counts the number of arguments as part of the function name.
  For instance;

      def hello() do
      end

  would be a completely different function from

      def hello(name) do
      end

  Can you find a way to make all the tests pass with just one
  function?
  """

  @doc """
  Greets the user by name, or by saying "Hello, World!"
  if no name is given.
  """
  @spec hello() :: String.t
  def hello do
    hello("World")
  end

  @spec hello(String.t) :: String.t
  def hello(name) do
    "Hello, " <> name <> "!"
  end
end
