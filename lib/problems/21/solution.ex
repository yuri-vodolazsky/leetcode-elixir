# Definition for singly-linked list.

alias LeetcodeElixir.P21.ListNode

defmodule LeetcodeElixir.P21.ListNode do
  @type t :: %__MODULE__{
          val: integer,
          next: ListNode.t() | nil
        }
  defstruct val: 0, next: nil
end

defmodule LeetcodeElixir.P21.Solution do
  @moduledoc """
  Merge Two Sorted Lists
  https://leetcode.com/problems/merge-two-sorted-lists/description/
  """
  @spec merge_two_lists(list1 :: ListNode.t | nil, list2 :: ListNode.t | nil) :: ListNode.t | nil
  def merge_two_lists(list1, list2) do
    cond do
      is_nil(list1) && is_nil(list2) ->
        nil

      is_nil(list1) ->
        %ListNode{
          val: list2.val,
          next: list2.next
        }

      is_nil(list2) ->
        %ListNode{
          val: list1.val,
          next: list1.next
        }

      list1.val < list2.val ->
        %ListNode{
          val: list1.val,
          next: merge_two_lists(list1.next, list2)
        }

      true ->
        %ListNode{
          val: list2.val,
          next: merge_two_lists(list1, list2.next)
        }
    end
  end
end
