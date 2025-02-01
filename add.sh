#!/bin/bash

PD=$1/$2
PROBLEM_DIR=lib/problems/$PD
TEST_DIR=test/problems/$PD

mkdir $PROBLEM_DIR

cat << EOF > $PROBLEM_DIR/solution.ex
defmodule LeetcodeElixir.P$2.Solution do
  @moduledoc """
  """

end
EOF

mkdir $TEST_DIR

cat << EOF > $TEST_DIR/solution_test.exs
defmodule Leetcode.Elixir.P$2.SolutionTest do
  use ExUnit.Case
  alias LeetcodeElixir.P$2.Solution

  test "/2" do
  end
end
EOF