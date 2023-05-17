defmodule Grades do
  def best_student(grades) do

    [first | rest] = Enum.sort_by(grades, &(elem(&1, 2)), :desc)

    elem(first, 1)

  end
end
