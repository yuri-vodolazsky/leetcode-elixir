defmodule LeetcodeElixir.P8.Solution do
  @moduledoc """
    String to Integer (atoi)
    https://leetcode.com/problems/string-to-integer-atoi/description/
  """
  @max 2 ** 31

  @spec my_atoi(s :: String.t) :: integer
  def my_atoi(s) do
    {coeff, digits} =
      s
      |> String.to_charlist()
      |> trim()
      |> get_digits({nil, []})

    if [] == digits do
      0
    else
      convert(digits, 0, 0, coeff)
    end

  end

  def convert([], res, _pos, coeff), do: res * coeff

  def convert([digit | tail], res, pos, coeff) do
    res = res + (digit - ?0) * 10 ** pos

    cond do
      coeff > 0 && res > @max - 1 ->
        @max - 1

      coeff < 0 && res > @max ->
         coeff * @max

      true ->
        convert(tail, res, pos + 1, coeff)
    end
  end

  def trim([]), do: []

  def trim([?\s | tail]), do: trim(tail)

  def trim(tail), do: tail

  def get_digits([], res), do: res

  def get_digits([ch | tail], {coeff, digits}) do
    cond do
      ch in ~c"0" ->
        digits = if [] == digits, do: [], else: [ch | digits]
        coeff = if is_nil(coeff), do: 1, else: coeff
        get_digits(tail, {coeff, digits})

      ch in ~c"123456789" ->
        coeff = if is_nil(coeff), do: 1, else: coeff
        get_digits(tail, {coeff, [ch | digits]})

      ch in ~c"+" ->
        if [] == digits && is_nil(coeff) do
          get_digits(tail, {1, digits})
        else
          {coeff, digits}
        end

      ch in ~c"-" ->
        if [] == digits && is_nil(coeff) do
          get_digits(tail, {-1, digits})
        else
          {coeff, digits}
        end

      true ->
        {coeff, digits}
    end
  end
end
