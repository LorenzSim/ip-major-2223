defmodule Numbers
  def even?(x) when is_number(x) do
    rem(x, 2) == 0
  end

  def odd?(x) when is_number(x) do
    !even?(x)
  end
end
