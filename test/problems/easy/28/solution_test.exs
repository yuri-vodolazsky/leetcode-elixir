defmodule Leetcode.Elixir.P28.SolutionTest do
  use ExUnit.Case
  alias LeetcodeElixir.P28.Solution

  test "str_str/2" do
    assert Solution.str_str("sadbutsad", "sad") == 0
    assert Solution.str_str("leetcode", "leeto") == -1
    assert Solution.str_str("hello", "ll") == 2
    assert Solution.str_str("hello", "lo") == 3
    assert Solution.str_str("hello", "o") == 4
  end
end
