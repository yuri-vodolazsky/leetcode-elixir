defmodule Leetcode.Elixir.P9.SolutionTest do
  use ExUnit.Case
  alias LeetcodeElixir.P9.Solution

  test "is_palindrome/1" do
    assert Solution.is_palindrome(0)
    assert Solution.is_palindrome(1)
    assert Solution.is_palindrome(11)
    assert Solution.is_palindrome(101)
    assert Solution.is_palindrome(1001)
    assert !Solution.is_palindrome(-1001)
    assert !Solution.is_palindrome(123)
  end

  test "to_l/2" do
    assert Solution.to_l(0, []) == []
    assert Solution.to_l(1, []) == [1]
    assert Solution.to_l(12, []) == [1, 2]
    assert Solution.to_l(123, []) == [1, 2, 3]
  end

  test "inverse/2" do
    assert Solution.inverse([], []) == []
    assert Solution.inverse([0], []) == [0]
    assert Solution.inverse([1], []) == [1]
    assert Solution.inverse([1, 2], []) == [2, 1]
    assert Solution.inverse([1, 2, 3], []) == [3, 2, 1]
  end

  test "compare/3" do
    assert Solution.compare([], [], true)
    assert Solution.compare([0], [0], true)
    assert Solution.compare([1], [1], true)
    assert Solution.compare([1, 2], [1, 2], true)
    assert Solution.compare([1, 2, 3], [1, 2, 3], true)
    assert Solution.compare([1, 2, 3], [1, 2, 3], true)
    assert !Solution.compare([1, 2, 3], [1, 2, 2], true)
    assert !Solution.compare([1, 2, 3], [1, 3, 2], true)
    assert !Solution.compare([1, 2, 3], [3, 2, 2], true)
    assert !Solution.compare([1, 2, 3], [1, 2, nil], true)
  end
end
