defmodule Leetcode.Elixir.P20.SolutionTest do
  use ExUnit.Case
  alias LeetcodeElixir.P20.Solution

  test "is_valid/1" do
    assert !Solution.is_valid("{")
    assert !Solution.is_valid("]")
    assert !Solution.is_valid("(]")
    assert Solution.is_valid("()")
    assert Solution.is_valid("()[]{}")
    assert Solution.is_valid("([])")
  end
end
