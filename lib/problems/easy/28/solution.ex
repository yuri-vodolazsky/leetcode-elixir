defmodule LeetcodeElixir.P28.Solution do
  @moduledoc """
  Find the Index of the First Occurrence in a String
  https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/description/
  """
  @spec str_str(haystack :: String.t, needle :: String.t) :: integer
  def str_str(haystack, needle) do
    scan(haystack, needle, 0, 0)
  end

  def scan(haystack, _needle, _left, right)
    when right == byte_size(haystack),
    do: -1

  def scan(haystack, needle, left, right)
    when right - left < byte_size(needle) - 1 and
         binary_part(haystack, right, 1) == binary_part(needle, right - left, 1),
    do: scan(haystack, needle, left, right + 1)

  def scan(haystack, needle, left, right)
    when right - left < byte_size(needle) - 1,
    do: scan(haystack, needle, left + 1, left + 1)

  def scan(haystack, needle, left, right)
    when right - left == byte_size(needle) - 1 and
         binary_part(haystack, right, 1) == binary_part(needle, right - left, 1),
    do: left

  def scan(haystack, needle, left, right)
    when right - left == byte_size(needle) - 1,
    do: scan(haystack, needle, left + 1, left + 1)
end
