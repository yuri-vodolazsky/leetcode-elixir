defmodule LeetcodeElixir.P13.Solution do
  @moduledoc """
  Roman to Integer
  https://leetcode.com/problems/roman-to-integer/
  Runtime: 38 ms
  """

  @spec roman_to_int(s :: String.t) :: integer
  def roman_to_int(s) do
    convert(s, 0, 0)
  end

  def convert(s, i, res) do
    current = String.at(s, i)
    next = String.at(s, i + 1)

    cond do
      is_nil(current) ->
        res

      is_nil(next) ->
        res + r_to_i(current)

      substraction(current, next) ->
        convert(s, i + 2, res + r_to_i(next) - r_to_i(current))

      true ->
        convert(s, i + 1, res + r_to_i(current))
    end
  end

  def r_to_i(a) do
    case a do
      "I" -> 1
      "V" -> 5
      "X" -> 10
      "L" -> 50
      "C" -> 100
      "D" -> 500
      "M" -> 1000
    end
  end

  def substraction(a, b) do
    a == "I" && (b == "V" || b == "X") ||
    a == "X" && (b == "L" || b == "C") ||
    a == "C" && (b == "D" || b == "M")
  end
end

defmodule LeetcodeElixir.P13.Solution2 do
  @moduledoc """
  Roman to Integer
  https://leetcode.com/problems/roman-to-integer/
  Runtime: 6 ms
  """

  @spec roman_to_int(s :: String.t) :: integer
  def roman_to_int(s) do
    convert(String.to_charlist(s), 0)
  end

  def convert([], res), do: res

  def convert([current | tail], res) do
    next = List.first(tail)

    cond do
      is_nil(next)  ->
        res + r_to_i(current)

      substraction(current, next) ->
        [_next | tail_tail] = tail
        convert(tail_tail, res + r_to_i(next) - r_to_i(current))

      true ->
        convert(tail, res + r_to_i(current))
    end
  end

  def r_to_i(a) do
    case a do
      ?I -> 1
      ?V -> 5
      ?X -> 10
      ?L -> 50
      ?C -> 100
      ?D -> 500
      ?M -> 1000
    end
  end

  def substraction(a, b) do
    a == ?I && (b == ?V || b == ?X) ||
    a == ?X && (b == ?L || b == ?C) ||
    a == ?C && (b == ?D || b == ?M)
  end
end
