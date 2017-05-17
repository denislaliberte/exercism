defmodule RotationalCipher do
  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"

  notes : 
  iex(5)> letters = Enum.to_list(?a .. ?z)
  iex(5)> index = Enum.find_index(letters, fn(x) -> x == ?x end)
  iex(7)> Enum.at(letters, index + 1)
  """
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
    letters = Enum.to_list(?a .. ?z)
    first_letter = List.first(to_charlist(text))
    index = Enum.find_index(letters, fn(x) -> x == first_letter end)
    new_index = index + shift
    letter = Enum.at(letters, new_index)
    String.Chars.to_string([letter])
  end
end

