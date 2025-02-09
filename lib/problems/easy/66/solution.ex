defmodule LeetcodeElixir.P66.Solution do
  @moduledoc """
  Plus One
  https://leetcode.com/problems/plus-one/description/
  """

  @spec plus_one(digits :: [integer]) :: [integer]
  def plus_one(digits) do
    inc(Enum.reverse(digits), 1, [])
  end

  def inc([], 1, res), do: [1 | res]

  def inc([], 0, res), do: res

  def inc(digits, 0, res) do
    Enum.reverse(digits) ++ res
  end

  def inc([d | digits], 1, res) when d < 9 do
    Enum.reverse([d + 1 | digits]) ++ res
  end

  def inc([9 | digits], 1, res) do
    inc(digits, 1, [0 | res])
  end
end
