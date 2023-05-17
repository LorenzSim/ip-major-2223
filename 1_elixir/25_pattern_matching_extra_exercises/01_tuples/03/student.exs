
defmodule Math do
  def simplify(exp) when is_number(exp) or is_atom(exp), do: exp

  def simplify({:+, a, b} = exp) do
    case exp do
      {:+, 0, b} -> simplify(b)
      {:+, a, 0} -> simplify(a)
      {:+, a, b} when is_number(a) and is_number(b) -> a + b
      _ -> simplify({:+, simplify(a), simplify(b)})
    end
  end

  def simplify({:-, a, b} = exp) do
    case exp do
      {:-, a, 0} -> simplify(a)
      {:-, a, b} when a == b -> 0
      {:-, a, b} when is_number(a) and is_number(b) -> a - b
      _ -> simplify({:-, simplify(a), simplify(b)})
    end
  end

  def simplify({:*, a, b} = exp) do
    case exp do
      {:*, 0, _b} -> 0
      {:*, _a, 0} -> 0
      {:*, 1, b} -> simplify(b)
      {:*, a, 1} -> simplify(a)
      {:*, a, b} when is_number(a) and is_number(b) -> a * b
      _ -> simplify({:*, simplify(a), simplify(b)})
    end
  end

end
