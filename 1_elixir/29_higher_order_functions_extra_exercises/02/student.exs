defmodule Util do
  def reduce([], init, _f), do: init

  def reduce([x|xs], init, f) do
    init = f.(x, init)
    reduce(xs, init, f)
  end
end
