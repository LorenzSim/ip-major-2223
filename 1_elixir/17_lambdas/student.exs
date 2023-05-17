defmodule Shop do
  def discount(:standard), do: fn p -> p end
  def discount(:bronze), do: fn p -> p * 0.95 end
  def discount(:silver), do: fn p -> p * 0.9 end
  def discount(:gold), do: &(&1 * 0.8)
end
