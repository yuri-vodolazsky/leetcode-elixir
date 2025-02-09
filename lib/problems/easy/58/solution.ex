defmodule LeetcodeElixir.P58.Solution do
  @moduledoc """
  Length of Last Word
  https://leetcode.com/problems/length-of-last-word/description/
  """

  @spec length_of_last_word(s :: String.t) :: integer
  def length_of_last_word(s) do
    find(s, 0, 0)
  end

  # End of the string
  def find(s, len, i) when byte_size(s) == i,
    do: len

  # Space, carry length of last word to the next position
  def find(s, len, i) when binary_part(s, i, 1) == " ",
    do: find(s, len, i + 1)

  # Beginning of the new word
  def find(s, _len, i) when i > 0 and binary_part(s, i - 1, 1) == " ",
    do: find(s, 1, i + 1)

  # Inside the word, keep counting its length
  def find(s, len, i),
    do: find(s, len + 1, i + 1)
end
