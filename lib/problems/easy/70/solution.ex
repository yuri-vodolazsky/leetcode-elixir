defmodule LeetcodeElixir.P70.Solution do
  @moduledoc """
  Climbing Stairs
  https://leetcode.com/problems/climbing-stairs/description/
  """

  @spec climb_stairs(n :: integer) :: integer
  # def climb_stairs(1), do: 1

  # def climb_stairs(0), do: 0

  def climb_stairs(n) do
    find(n, 0)
  end

  def find(1, steps), do: steps + 1

  def find(2, steps), do: steps + 1

  def find(n, steps) do
    find(n - 1, steps) + find(n - 2, steps)
  end
end
