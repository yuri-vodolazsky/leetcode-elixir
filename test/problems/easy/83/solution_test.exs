defmodule Leetcode.Elixir.P83.SolutionTest do
  use ExUnit.Case
  alias LeetcodeElixir.P83.{Solution, ListNode}

  test "delete_duplicates/1" do
    [1, 2, 3]
    |> build_list()
    |> Solution.delete_duplicates()
    |> find_dupes()

    [1, 2, 2, 3, 3, 4, 4, 5, 5]
    |> build_list()
    |> Solution.delete_duplicates()
    |> find_dupes()

    assert true
  end

  def build_list([]), do: nil
  def build_list([head | tail]) do
    %ListNode{val: head, next: build_list(tail)}
  end

  def find_dupes(nil), do: []
  def find_dupes(node) do
    # dbg(node.val)
    if node.next != nil and node.val == node.next.val do
      assert false
    end
    find_dupes(node.next)
  end
end
