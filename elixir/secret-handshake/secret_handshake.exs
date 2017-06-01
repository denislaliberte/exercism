use Bitwise
defmodule SecretHandshake do
  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
    a = []
    if (0b1 &&& code) == 0b1 do
      a = a ++ ["wink"]
    end
    if (0b10 &&& code) == 0b10 do
      a = a ++ ["double blink"]
    end
    if (0b100 &&& code) == 0b100 do
      a = a ++ ["close your eyes"]
    end
    if (0b1000 &&& code) == 0b1000 do
      a = a ++ ["jump"]
    end
    if (0b10000 &&& code) == 0b10000 do
      a = Enum.reverse(a)
    end
    a
  end
end
