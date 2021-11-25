defmodule Enumerables do
  def lists() do
    IO.inspect(Enum.map([1, 2, 3], fn n -> n * 2 end))

    IO.inspect(
      Enum.map(~s(some few words) |> String.split(), fn w ->
        String.upcase(w)
      end)
    )
  end

  def maps() do
    IO.inspect(Enum.map(%{1 => 1.1, 2 => 2.2, 3 => 3.3}, fn {k, v} -> k * v end))
  end

  def ranges() do
    IO.inspect(Enum.map(1..5, fn n -> n * 3 end))
    IO.inspect(Enum.reduce(1..3, 0, &+/2))
  end
end

Enumerables.lists()
Enumerables.maps()
Enumerables.ranges()
