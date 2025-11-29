alias LeetcodeElixir.P83.ListNode

# Definition for singly-linked list.
defmodule LeetcodeElixir.P83.ListNode do
  @type t :: %__MODULE__{
          val: integer,
          next: ListNode.t() | nil
        }
  defstruct val: 0, next: nil
end

defmodule LeetcodeElixir.P83.Solution do
  @spec delete_duplicates(head :: ListNode.t | nil) :: ListNode.t | nil
  def delete_duplicates(head) do
    uniq(head)
  end

  def uniq(nil), do: nil

  def uniq(node) do
    next_node =
      if node.next != nil and node.val == node.next.val do
        node.next.next
      else
        node.next
      end

    %ListNode{val: node.val, next: uniq(next_node)}
  end
end
