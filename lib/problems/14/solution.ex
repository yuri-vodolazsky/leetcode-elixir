defmodule LeetcodeElixir.P14.Solution do
  @moduledoc """
  Longest Common Prefix
  https://leetcode.com/problems/longest-common-prefix/description/
  """

  @spec longest_common_prefix(strs :: [String.t]) :: String.t
  def longest_common_prefix(strs) do
    find(Enum.map(strs, &String.to_charlist/1), [])
    |> Enum.reverse()
    |> to_string()

  end

  def find(strs, pref) do
    ch = List.first(List.first(strs), 0)

    strs = Enum.map(strs, fn
      [] -> nil
      [s0 | tail] -> if s0 == ch, do: tail, else: nil
    end)

    not_the_same? = Enum.reduce(strs, false, fn str, found? ->
      if found? || is_nil(str), do: true, else: false
    end)

    if not_the_same? do
      pref
    else
      find(strs, [ch | pref])
    end
  end
end
