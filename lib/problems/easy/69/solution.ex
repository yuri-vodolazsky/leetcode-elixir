defmodule LeetcodeElixir.P69.Solution do
  @moduledoc """
  Sqrt(x)
  https://leetcode.com/problems/sqrtx/description/
  """

  def my_sqrt(x) do
    find(0, x, x)
  end

  def find(left, right, target) when right - left <= 1 do
    if right ** 2 == target do
      right
    else
      left
    end
  end

  def find(left, right, target) do
    middle = ceil((right + left) / 2)
    middle_sqr = middle ** 2

    cond do
      middle_sqr == target ->
        middle

      middle_sqr < target ->
        find(middle, right, target)

      middle_sqr > target ->
        find(left, middle, target)
    end
  end
end
