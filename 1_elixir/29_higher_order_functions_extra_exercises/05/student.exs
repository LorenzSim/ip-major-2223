defmodule Math do
  def factorial(n), do: Enum.reduce(Enum.to_list(1..n), 1, &(&1 * &2))
end
