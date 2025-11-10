defmodule LeetcodeElixir.P70.Solution do
  @moduledoc """
  Climbing Stairs
  https://leetcode.com/problems/climbing-stairs/description/
  """

  @spec climb_stairs(n :: integer) :: integer
  def climb_stairs(n) do
    find(3, n, %{1 => 1, 2 => 2})
  end

  def find(_i, 1, _map), do: 1
  def find(_i, 2, _map), do: 2

  def find(i, n, map) do
    res = map[i - 1] + map[i - 2]

    if i == n do
      res
    else
      find(i + 1, n, Map.put(map, i, res))
    end
  end
end
