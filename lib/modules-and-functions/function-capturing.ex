defmodule Math do
  def sum(a, b), do: do_sum(a, b)
  defp do_sum(a, b), do: a + b

  def zero?(0), do: true
  def zero?(x) when is_integer(x), do: false
end

fun = &Math.zero?/1
IO.puts is_function(fun)
IO.puts fun.(0)

IO.puts (&is_function/1).(fun)

add = &+/2
IO.puts add.(1, 2)

sub = &-/2
IO.puts sub.(2, 1)

div = &//2
IO.puts div.(8, 2)

multi = &*/2
IO.puts multi.(2, 3)

fun = &(&1 + 8)
IO.puts fun.(2)

fun2 = &("#{&1} bye!")
IO.puts fun2.("Good")

fun3 = &(&1 <> &2 <> &3)
IO.puts fun3.("a", "b", "c")
