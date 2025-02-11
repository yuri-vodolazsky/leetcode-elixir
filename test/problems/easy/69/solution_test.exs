defmodule Leetcode.Elixir.P69.SolutionTest do
  use ExUnit.Case
  alias LeetcodeElixir.P69.Solution

  test "my_sqrt/1" do
    assert Solution.my_sqrt(0) == 0
    assert Solution.my_sqrt(1) == 1
    assert Solution.my_sqrt(4) == 2
    assert Solution.my_sqrt(8) == 2
    assert Solution.my_sqrt(16) == 4
    assert Solution.my_sqrt(17) == 4
    assert Solution.my_sqrt(20) == 4
    assert Solution.my_sqrt(15) == 3
    assert Solution.my_sqrt(2 ** 31 - 1) == 46340
  end
end
# 0, 20 m: 10, 10**2 > 20
# 0, 10 m: 5, 5**2 > 20
# 0, 5 m: 2, 2**2 < 20
# 2, 5 m: 3, 3**2 < 20
# 3, 5 m: 4, 4**2 < 20
# 4, 5 (5-4<=1) -> 4
