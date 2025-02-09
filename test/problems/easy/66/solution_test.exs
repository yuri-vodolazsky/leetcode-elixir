defmodule Leetcode.Elixir.P66.SolutionTest do
  use ExUnit.Case
  alias LeetcodeElixir.P66.Solution

  test "plus_one/1" do
    assert Solution.plus_one([1, 2, 3]) == [1, 2, 4]
    assert Solution.plus_one([4, 3, 2, 1]) == [4, 3, 2, 2]
    assert Solution.plus_one([9]) == [1, 0]
    assert Solution.plus_one([8]) == [9]
    assert Solution.plus_one([0]) == [1]
    assert Solution.plus_one([9, 9]) == [1, 0, 0]
    assert Solution.plus_one([9, 9, 8]) == [9, 9, 9]
    assert Solution.plus_one([9, 9, 9]) == [1, 0, 0, 0]
  end
end
