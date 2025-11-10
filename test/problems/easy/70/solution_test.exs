defmodule Leetcode.Elixir.P70.SolutionTest do
  use ExUnit.Case
  alias LeetcodeElixir.P70.Solution

  test "climb_stairs/1" do
    assert Solution.climb_stairs(1) == 1
    assert Solution.climb_stairs(2) == 2
    assert Solution.climb_stairs(3) == 3
    assert Solution.climb_stairs(4) == 5
    assert Solution.climb_stairs(5) == 8
    assert Solution.climb_stairs(6) == 13
    assert Solution.climb_stairs(7) == 21
    assert Solution.climb_stairs(8) == 34
    Enum.each(1..100, & Solution.climb_stairs(&1))
  end
end

# 1 1
# 2


# 1 1 1
# 2 1
# 1 2

# 1 1 1 1
# 2 1 1
# 1 2 1
# 1 1 2
# 2 2

# 1 1 1 1 1
# 2 1 1 1
# 1 2 1 1
# 1 1 2 1
# 1 1 1 2
# 2 2 1
# 2 1 2
# 1 2 2

# 1 1 1 1 1 1
# 2 1 1 1 1
# 1 2 1 1 1
# 1 1 2 1 1
# 1 1 1 2 1
# 1 1 1 1 2
# 2 2 1 1
# 1 2 2 1
# 1 1 2 2
# 2 1 2 1
# 2 1 1 2
# 1 2 1 2
# 2 2 2
