defmodule Util do
  def count(xs, p) do
    Enum.reduce(xs, 0,
    fn x, acc ->
      if p.(x) do
        acc + 1
      else
        acc
      end
    end
    )
  end
end
