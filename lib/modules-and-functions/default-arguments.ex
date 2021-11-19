defmodule Concat do
  # a function head declaring defaults
  def join(a, b \\ nil, sep \\ " ")

  def join(a, b, _sep) when is_nil(b) do
    a
  end

  def join(a, b, sep) do
    a <> sep <> b
  end

  def do_work(x \\ "default") do
    x
  end
end

IO.puts Concat.join("Hello", "world")
IO.puts Concat.join("Hello", "world", "_")
IO.puts Concat.join("Hello")

IO.puts Concat.do_work 123
IO.puts Concat.do_work
