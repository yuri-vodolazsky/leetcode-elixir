defmodule Leetcode.Elixir.P35.SolutionTest do
  use ExUnit.Case
  alias LeetcodeElixir.P35.Solution

  test "search_insert/2" do
    assert Solution.search_insert([1,3,5,6], 0) == 0
    assert Solution.search_insert([1,3,5,6], 2) == 1
    assert Solution.search_insert([1,3,5,6], 5) == 2
    assert Solution.search_insert([1,3,5,6], 7) == 4
    assert Solution.search_insert([1,3,5,6], 6) == 3

    assert Solution.search_insert([1,3], -1) == 0
    assert Solution.search_insert([1,3], 2) == 1
    assert Solution.search_insert([1,3], 3) == 1
    assert Solution.search_insert([1,3], 4) == 2

    assert Solution.search_insert([1], -1) == 0
    assert Solution.search_insert([1], 1) == 0
    assert Solution.search_insert([1], 2) == 1
  end
end
