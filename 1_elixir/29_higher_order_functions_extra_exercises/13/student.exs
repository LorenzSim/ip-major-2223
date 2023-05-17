defmodule Util do
  def increasing?([]) do
    true
  end
  def increasing?([x]) do
    true
  end
  def increasing?([first, second | ns]) do
    first <= second and increasing?([second | ns])
  end
end
