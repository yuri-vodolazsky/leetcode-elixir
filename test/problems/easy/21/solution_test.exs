defmodule Leetcode.Elixir.P21.SolutionTest do
  use ExUnit.Case
  alias LeetcodeElixir.P21.Solution
  alias LeetcodeElixir.P21.ListNode

  test "merge_two_lists/2" do
    assert Solution.merge_two_lists(
      list_to_node([1, 2, 4]),
      list_to_node([1, 3, 4])
    ) |> node_to_list([]) == [1, 1, 2, 3, 4, 4]

    assert Solution.merge_two_lists(
      list_to_node([]),
      list_to_node([0])
    ) |> node_to_list([]) == [0]
  end

  def list_to_node([]), do: nil

  def list_to_node([cur | tail]) do
    %ListNode{
      val: cur,
      next: list_to_node(tail)
    }
  end

  def node_to_list(nil, list), do: Enum.reverse(list)

  def node_to_list(%ListNode{} = node, list) do
    node_to_list(node.next, [node.val | list])
  end
end
