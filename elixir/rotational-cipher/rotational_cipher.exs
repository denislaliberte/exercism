defmodule RotationalCipher do
  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """

  @lowercase_letters Enum.to_list(?a .. ?z)
  @uppercase_letters Enum.to_list(?A .. ?Z)

  def find_index(letter, letters) do
    Enum.find_index(letters, fn(x) -> x == letter end)
  end

  def translate_chars(shift, letters) do
    fn letter ->
      index = find_index(letter, letters)
      if is_integer(index) do
        Enum.at(letters, rem(index + shift, 26))
      else
        letter
      end
    end
  end

  def translate(x, letters, shift) do
    Enum.map(x, translate_chars(shift, letters))
  end

  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
    text |>
    to_charlist |>
    translate(@lowercase_letters, shift) |>
    translate(@uppercase_letters, shift) |>
    String.Chars.to_string
  end
end
