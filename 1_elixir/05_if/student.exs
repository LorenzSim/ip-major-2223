defmodule Numbers do
  def abs2(x) do
      if x < 0 do
        -x
      else
        x
      end
  end

  def abs(x) do
    if x < 0, do: -x, else: x
  end
end
