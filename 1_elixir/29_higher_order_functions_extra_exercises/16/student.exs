defmodule Math do

  def product(ns) do
    Enum.reduce(ns, 1, fn n, acc -> acc * n end)
  end
end
