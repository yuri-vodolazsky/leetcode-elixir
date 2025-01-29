defmodule Leetcode.Elixir.P13.SolutionTest do
  use ExUnit.Case
  alias LeetcodeElixir.P13.Solution
  alias LeetcodeElixir.P13.Solution2

  test "Solution.roman_to_int/1" do
    assert Solution.roman_to_int("I") == 1
    assert Solution.roman_to_int("V") == 5
    assert Solution.roman_to_int("X") == 10
    assert Solution.roman_to_int("L") == 50
    assert Solution.roman_to_int("C") == 100
    assert Solution.roman_to_int("D") == 500
    assert Solution.roman_to_int("M") == 1000

    assert Solution.roman_to_int("III") == 3

    assert Solution.roman_to_int("VI") == 6
    assert Solution.roman_to_int("IV") == 4

    assert Solution.roman_to_int("LVIII") == 58

    assert Solution.roman_to_int("MCMXCIV") == 1994

    assert Solution.roman_to_int("MCDLXXVI") == 1476
  end

  test "Solution2.roman_to_int/1" do
    assert Solution2.roman_to_int("I") == 1
    assert Solution2.roman_to_int("V") == 5
    assert Solution2.roman_to_int("X") == 10
    assert Solution2.roman_to_int("L") == 50
    assert Solution2.roman_to_int("C") == 100
    assert Solution2.roman_to_int("D") == 500
    assert Solution2.roman_to_int("M") == 1000

    assert Solution2.roman_to_int("III") == 3

    assert Solution2.roman_to_int("VI") == 6
    assert Solution2.roman_to_int("IV") == 4

    assert Solution2.roman_to_int("LVIII") == 58

    assert Solution2.roman_to_int("MCMXCIV") == 1994

    assert Solution2.roman_to_int("MCDLXXVI") == 1476
  end
end
