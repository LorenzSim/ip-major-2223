defmodule Util do

  def follow(map, start) do
    c = Map.fetch(map, start)
    if c == :error do
      [start]
    else
      [start | follow(map, elem(c, 1))]
    end
  end
end
