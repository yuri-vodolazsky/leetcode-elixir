defmodule LeetcodeElixir.P8.SolutionTest do
  use ExUnit.Case
  alias LeetcodeElixir.P8.Solution

  test "my_atoi/1" do
    assert Solution.my_atoi("") == 0
    assert Solution.my_atoi(" ") == 0
    assert Solution.my_atoi(" dd") == 0
    assert Solution.my_atoi(" +dd") == 0
    assert Solution.my_atoi("-") == 0
    assert Solution.my_atoi(" -") == 0
    assert Solution.my_atoi("42") == 42
    assert Solution.my_atoi("42s") == 42
    assert Solution.my_atoi("-42") == -42
    assert Solution.my_atoi("-42tail") == -42
    assert Solution.my_atoi("   -042 tail ") == -42
    assert Solution.my_atoi("   +042 tail ") == 42
    assert Solution.my_atoi("1337c0d3") == 1337
    assert Solution.my_atoi("0-1") == 0
    assert Solution.my_atoi("words and 987") == 0
    assert Solution.my_atoi(" 99999999999999999999999999") == 2 ** 31 - 1
    assert Solution.my_atoi(" -9999999999999999999999999") == - 2 ** 31
    assert Solution.my_atoi("-91283472332") == - 2 ** 31
  end

  test "convert/4" do
    assert Solution.convert(~c"", 0, 0, 1) == 0
    assert Solution.convert(~c"", 0, 0, -1) == 0
    assert Solution.convert(~c"1", 0, 0, 1) == 1
    assert Solution.convert(~c"1", 0, 0, -1) == -1
    assert Solution.convert(~c"24", 0, 0, 1) == 42
    assert Solution.convert(~c"024", 0, 0, 1) == 420
  end

  test "trim/1" do
    assert Solution.trim(~c"") == ~c""
    assert Solution.trim(~c" ") == ~c""
    assert Solution.trim(~c"42") == ~c"42"
    assert Solution.trim(~c" 42") == ~c"42"
    assert Solution.trim(~c"  42") == ~c"42"
    assert Solution.trim(~c" +42") == ~c"+42"
  end

  test "to_digits/2" do
    assert Solution.get_digits(~c"", {nil, []}) == {nil, ~c""}
    assert Solution.get_digits(~c"+", {nil, []}) == {1, ~c""}
    assert Solution.get_digits(~c"-", {nil, []}) == {-1, ~c""}
    assert Solution.get_digits(~c"+-1", {nil, []}) == {1, ~c""}
    assert Solution.get_digits(~c"-+1", {nil, []}) == {-1, ~c""}
    assert Solution.get_digits(~c"42", {nil, []}) == {1, ~c"24"}
    assert Solution.get_digits(~c"42", {nil, []}) == {1, ~c"24"}
    assert Solution.get_digits(~c"042", {nil, []}) == {1, ~c"24"}
    assert Solution.get_digits(~c"+42", {nil, []}) == {1, ~c"24"}
    assert Solution.get_digits(~c"-042", {nil, []}) == {-1, ~c"24"}
    assert Solution.get_digits(~c"-42", {nil, []}) == {-1, ~c"24"}
    assert Solution.get_digits(~c"1337c0d3", {nil, []}) == {1, ~c"7331"}
    assert Solution.get_digits(~c"0-1", {nil, []}) == {1, ~c""}
    assert Solution.get_digits(~c"-0", {nil, []}) == {-1, ~c""}
    assert Solution.get_digits(~c"3-1", {nil, []}) == {1, ~c"3"}
    assert Solution.get_digits(~c"420", {nil, []}) == {1, ~c"024"}

    assert Solution.get_digits(Solution.trim(~c"  -042"), {nil, []}) == {-1, ~c"24"}
  end
end
