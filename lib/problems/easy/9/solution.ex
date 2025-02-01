defmodule LeetcodeElixir.P9.Solution do
  @moduledoc """
  Palindrome number
  https://leetcode.com/problems/palindrome-number/
  """
  @spec is_palindrome(x :: integer) :: boolean
  def is_palindrome(x) do
    if x < 0 do
      false
    else
      digits = to_l(x, [])
      inverse = inverse(digits, [])
      compare(digits, inverse, true)
    end
  end

  def to_l(0, digits), do: digits

  def to_l(x, digits) do
    to_l(floor(x / 10), [rem(x, 10) | digits])
  end

  def inverse([], digits), do: digits

  def inverse([digit | tail], digits) do
    inverse(tail, [digit | digits])
  end

  def compare(_digits, _inverse, false), do: false

  def compare([], [], true), do: true

  def compare([x | digits], [y | inverse], true) do
    compare(digits, inverse, x == y)
  end
end
