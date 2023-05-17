
defmodule Cards do

  defp to_numeric(n) when is_number(n), do: n
  defp to_numeric(:jack), do: 11
  defp to_numeric(:queen), do: 12
  defp to_numeric(:king), do: 13
  defp to_numeric(:ace), do: 14

  def higher?(x, y) do
      to_numeric(x) > to_numeric(y)
  end

end
