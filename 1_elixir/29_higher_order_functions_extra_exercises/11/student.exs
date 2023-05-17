defmodule Math do

  def prime?(2) do
    true
  end
  def prime?(n) do
   !Enum.any?(2..n-1, &(rem(n, &1)) == 0)
  end
end
