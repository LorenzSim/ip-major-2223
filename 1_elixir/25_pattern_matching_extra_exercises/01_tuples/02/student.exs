
defmodule Math do
  def evaluate(n) when is_number(n), do: n
  def evaluate({:+, value1, value2}), do: evaluate(value1) + evaluate(value2)
  def evaluate({:-, value1, value2}), do: evaluate(value1) - evaluate(value2)
  def evaluate({:*, value1, value2}), do: evaluate(value1) * evaluate(value2)
  def evaluate({:/, value1, value2}), do: evaluate(value1) / evaluate(value2)
end
