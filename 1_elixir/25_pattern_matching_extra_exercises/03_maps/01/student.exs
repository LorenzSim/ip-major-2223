
defmodule Util do

  def follow(map, start) do
    c = Map.get(map, start)
    if c == nil do
      [start]
    else
      [start | follow(map, c)]
    end
  end

end
