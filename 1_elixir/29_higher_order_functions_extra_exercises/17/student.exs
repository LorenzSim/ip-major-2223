defmodule Math do
  def sum(ns) do
    Enum.reduce(ns, 0, fn n, acc -> acc + n end)
  end
end
