defmodule Grades do
  def remove_na(grades) do
    Enum.filter(grades, fn grade -> grade != :na end)
  end
end
