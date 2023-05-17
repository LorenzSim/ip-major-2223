defmodule Shop do
  
  defp standard(price), do: price
  defp bronze(price), do: price * 0.95
  defp silver(price), do: price * 0.90
  defp gold(price), do: price * 0.80

  def discount(:standard), do: &standard/1
  def discount(:bronze), do: &bronze/1
  def discount(:silver), do: &silver/1
  def discount(:gold), do: &gold/1

end
