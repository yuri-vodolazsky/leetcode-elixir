defmodule LeetcodeElixir.P7.Solution do
  @moduledoc """
  Reverse Integer
  https://leetcode.com/problems/reverse-integer/description/
  """
  @max 2 ** 31

  @spec reverse(x :: integer) :: integer
  def reverse(x) do
    coeff = if x < 0, do: -1, else: 1
    coeff * convert(to_l(abs(x), []), 0, 0, coeff)
  end

  def convert([], _pos, res, coeff) do
    if res > @max - coeff do
      0
    else
      res
    end
  end

  def convert([digit | tail], pos, res, coeff) do
    if res > @max - coeff do
      0
    else
      convert(tail, pos + 1, res + digit * 10 ** pos, coeff)
    end
  end

  def to_l(0, list), do: list

  def to_l(x, list) do
    to_l(floor(x / 10), [rem(x, 10) | list])
  end
end
