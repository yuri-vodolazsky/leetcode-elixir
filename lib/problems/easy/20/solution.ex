defmodule LeetcodeElixir.P20.Solution do
  @moduledoc """
  Valid Parentheses
  https://leetcode.com/problems/valid-parentheses/description/
  """
  @spec is_valid(s :: String.t) :: boolean
  def is_valid(s) do
    check(to_charlist(s), [])
  end

  def check([], []), do: true

  # Meet end but there are somthing in the stack: brackets unbalanced
  def check([], _stack), do: false

  def check([ch | tail], stack) when ch in [?(, ?{, ?[] do
    check(tail, [ch | stack])
  end

  # Meet right bracket but there no left one in the stack
  def check(_, []), do: false

  def check([ch | tail], stack) do
    [left | stack_tail] = stack

    if match_p?(left, ch) do
      check(tail, stack_tail)
    else
      false
    end
  end

  def match_p?(left, right) do
    left == ?( && right == ?) ||
    left == ?{ && right == ?} ||
    left == ?[ && right == ?]
  end
end
