defmodule Language do
  def greeting(saluation \\ "Hello", name) do
    "#{saluation} #{name}"
  end
end
