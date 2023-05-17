defmodule Grades do
  def ranking(grades) do
    grades
    |> Enum.sort_by(&(elem(&1, 2)), :desc)
    |> Enum.map(&(elem(&1, 1)))
    |> 
  end
end
