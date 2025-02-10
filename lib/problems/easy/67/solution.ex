defmodule LeetcodeElixir.P67.Solution do
  @moduledoc """
  Add Binary
  https://leetcode.com/problems/add-binary/
  """

  def add_binary(a, b) do
    add(a, b, 1, 0, "")
  end

  def add(a, b, i, carry, res) when byte_size(a) - i < 0 and byte_size(b) - i < 0 do
    if carry == 1, do: "1" <> res, else: res
  end

  def add(a, b, i, carry, res) when byte_size(a) - i < 0 do
    dig_b = binary_part(b, byte_size(b) - i, 1) |> String.to_integer()
    call_add(a, b, i, carry, res, 0, dig_b)
  end

  def add(a, b, i, carry, res) when byte_size(b) - i < 0 do
    dig_a = binary_part(a, byte_size(a) - i, 1) |> String.to_integer()
    call_add(a, b, i, carry, res, dig_a, 0)
  end

  def add(a, b, i, carry, res) do
    dig_a = binary_part(a, byte_size(a) - i, 1) |> String.to_integer()
    dig_b = binary_part(b, byte_size(b) - i, 1) |> String.to_integer()
    call_add(a, b, i, carry, res, dig_a, dig_b)
  end

  defp call_add(a, b, i, carry, res, dig_a, dig_b) do
    position_sum = dig_a + dig_b + carry
    carry = if position_sum > 1, do: 1, else: 0
    dig = rem(position_sum, 2)
    add(a, b, i + 1, carry, Integer.to_string(dig) <> res)
  end
end
