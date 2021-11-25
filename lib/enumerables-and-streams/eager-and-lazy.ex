defmodule EagerAndLazy do
  # Enum module provides eager operations
  def eager_operations() do
    odd? = &(rem(&1, 2) != 0)
    Enum.filter(1..3, odd?)
  end

  # Stream module provides lazy operations
  def lazy_operations() do
    10_000 |> Stream.map(&(&1 * 1))
  end
end

IO.inspect(EagerAndLazy.eager_operations())
IO.inspect(EagerAndLazy.lazy_operations())
