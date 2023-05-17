defmodule Util do

  def replace_at([_ | xs], 0, x) do
    [x | xs]
  end

  def replace_at([first | xs], i, x) do
    [first | replace_at(xs, i - 1, x)]
  end

end
