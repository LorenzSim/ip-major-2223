defmodule Grades do
  def best_students(grades) do
    grades
    |> Enum.sort_by(fn {_r, _n, g} -> g end, :desc)
    |> Enum.take(3)
    |> Enum.map(fn {_r, n, _g} -> n end)
  end
end
