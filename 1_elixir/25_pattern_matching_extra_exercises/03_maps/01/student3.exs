defmodule Util do
  def follow(map, start) do
    with {:ok, c} <- Map.fetch(map, start) do
      [start | follow(map, c)]
    else
      _ -> [start]
    end
  end
end
