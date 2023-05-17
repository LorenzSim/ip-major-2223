defmodule Util do

  def sum_longest_list([]) do
    0
  end
  def sum_longest_list([[]]) do
    0
  end

  def sum_longest_list(xss) do
    xss |> Enum.max_by(&length/1) |> Enum.sum()
  end
end
