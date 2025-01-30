defmodule Leetcode.Elixir.P14.SolutionTest do
  use ExUnit.Case
  alias LeetcodeElixir.P14.Solution

  test "longest_common_prefix/1" do
    assert Solution.longest_common_prefix(["flower","flow","flight"]) == "fl"
    assert Solution.longest_common_prefix(["dog","racecar","car"]) == ""
  end
end
