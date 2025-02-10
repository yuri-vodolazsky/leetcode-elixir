defmodule Leetcode.Elixir.P67.SolutionTest do
  use ExUnit.Case
  alias LeetcodeElixir.P67.Solution

  test "add_binary/2" do
    assert Solution.add_binary("11", "1") == "100"
    assert Solution.add_binary("1010", "1011") == "10101"
    assert Solution.add_binary("0", "0") == "0"
    assert Solution.add_binary("1", "0") == "1"
    assert Solution.add_binary("0", "1") == "1"
    assert Solution.add_binary("11", "11") == "110"
  end
end
