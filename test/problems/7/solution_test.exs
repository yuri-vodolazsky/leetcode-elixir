defmodule LeetcodeElixir.P7.SolutionTest do
  use ExUnit.Case
  alias LeetcodeElixir.P7.Solution

  test "reverse integers correcly" do
    assert Solution.reverse(123) == 321
    assert Solution.reverse(120) == 21
    assert Solution.reverse(-120) == -21
    assert Solution.reverse(-9999999999999999999) == 0
    assert Solution.reverse(9999999999999999999) == 0
  end
end
