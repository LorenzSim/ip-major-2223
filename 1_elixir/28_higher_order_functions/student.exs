defmodule Grades do
  def passed_percentage(grades) do
    n_passed = Enum.count(grades, &(&1 >= 10))
    n = length(grades)
    round(n_passed / n * 100)
  end
end
