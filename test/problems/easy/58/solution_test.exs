defmodule Leetcode.Elixir.P58.SolutionTest do
  use ExUnit.Case
  alias LeetcodeElixir.P58.Solution

  test "length_of_last_word/1" do
    assert Solution.length_of_last_word("Hello World") == 5
    assert Solution.length_of_last_word("   fly me   to   the moon  ") == 4
    assert Solution.length_of_last_word("luffy is still joyboy") == 6
    assert Solution.length_of_last_word("a") == 1
    assert Solution.length_of_last_word(" a") == 1
    assert Solution.length_of_last_word("a ") == 1
  end
end
