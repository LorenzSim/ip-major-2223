defmodule Shop do
  defp create_discounter(p), do: &(&1 * (1 - p / 100))
  def discount(:standard), do: create_discounter(0)
  def discount(:bronze), do: create_discounter(5)
  def discount(:silver), do: create_discounter(10)
  def discount(:gold), do: create_discounter(20)
end
