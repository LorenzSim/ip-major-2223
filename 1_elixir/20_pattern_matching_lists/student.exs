defmodule Util do
  def first([first | _]), do: first
  def second([_, sec | _]), do: sec
  def third([_, _, third | _]), do: third

  def last([x]), do: x
  def last([_ | rest]), do: last(rest)

  def size([]), do: 0
  def size([_ | rest]), do: 1 + size(rest)

end
