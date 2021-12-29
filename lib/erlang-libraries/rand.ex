defmodule ErlangRand do
  def uniform do
    IO.puts :rand.uniform()
    _ = :rand.seed(:exs1024, {123, 123534, 345345})
    IO.puts :rand.uniform()
  end
end
