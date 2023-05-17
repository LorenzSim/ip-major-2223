defmodule  Exercise do

  def maximum([n]), do: n

  def maximum([n | ns]) do
    max(n, maximum(ns))
  end
end
