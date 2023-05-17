defmodule Sum do
  def sum([]), do: 0
  def sum([n | ns]), do: n + sum(ns)
end
