defmodule Math do
  def sum_list([h|t], accumulator) do
    sum_list(t, h + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end

  def double_each([h|t]) do
    [h * 2 | double_each(t)]
  end

  def double_each([]) do
    []
  end

  def sum_with_reduce(list) do
    Enum.reduce(list, 0, fn(x, acc) -> x + acc end)
  end

  def sum_with_capture_syntax(list) do
    Enum.reduce(list, 0, &+/2)
  end
end

IO.puts Math.sum_list([1,2,3], 0)
IO.inspect Math.double_each([2,3,4])
IO.puts Math.sum_with_reduce([5,6,7])
IO.puts Math.sum_with_capture_syntax([5,6,7])
