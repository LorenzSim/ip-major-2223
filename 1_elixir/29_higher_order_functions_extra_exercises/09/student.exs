defmodule Grades do

  defp parse_grade(g) do
    cond do
      grade in 0..7 -> "C"
      grade in 8..9 -> "B"
      grade >= 10 -> "A"
    end
  end

  def to_code(grades) do
    grades
    |> Enum.map(fn grade -> parse_grade(grade) end)
    |> Enum.join("")
  end
end
