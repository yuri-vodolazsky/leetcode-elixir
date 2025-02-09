defmodule LeetcodeElixir.P35.Solution do
  @moduledoc """
  Search Insert Position
  https://leetcode.com/problems/search-insert-position/description/
  """

  @spec search_insert(nums :: [integer], target :: integer) :: integer
  def search_insert(nums, target) do
    nums = List.to_tuple(nums)
    find(nums, target, 0, tuple_size(nums) - 1)
  end

  def find(nums, target, left, right) when left >= right do
    if elem(nums, left) >= target do
      left
    else
      left + 1
    end
  end

  def find(nums, target, left, right) do
    middle = floor((right + left) / 2)

    cond do
      target == elem(nums, middle) ->
        middle

      target > elem(nums, middle) ->
        find(nums, target, middle + 1, right)

      true ->
        find(nums, target, left, middle - 1)
    end
  end
end
