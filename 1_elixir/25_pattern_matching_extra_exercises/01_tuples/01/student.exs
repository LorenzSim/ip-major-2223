defmodule Cards do

  defp numericvalue(k) when is_number(k), do: k
  defp numericvalue(:jack), do: 11
  defp numericvalue(:queen), do: 12
  defp numericvalue(:king), do: 13
  defp numericvalue(:ace), do: 14

  def higher?({value1, suit}, {value2, suit}, trump_suit), do: numericvalue(value1) > numericvalue(value2)

  def higher?({_, suit}, {_, trump_suit}, trump_suit), do: false

  def higher?({_, _}, {_, _}, _), do: true

end
