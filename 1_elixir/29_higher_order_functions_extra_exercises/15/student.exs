defmodule Util do
  def maximum(xs) do
    Enum.reduce(xs, fn x, acc -> if x > acc do x else acc end end)
  end
end
