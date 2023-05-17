defmodule Exercise  do

  def reverse([]), do: []
  def reverse([_x] = xs), do: xs

  def reverse([x | xs]), do: reverse(xs) ++ [x]
end
