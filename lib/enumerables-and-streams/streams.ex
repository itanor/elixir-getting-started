defmodule Streams do
  def composable() do
    odd? = fn n -> rem(n, 2) == 1 end
    1..100_000 |> Stream.map(&(&1 * 3)) |> Stream.filter(odd?)
  end

  def cycle() do
    stream = Stream.cycle([1, 2, 3])
    Enum.take(stream, 10)

    # or
    Stream.cycle([1, 2, 3]) |> Enum.take(10)
  end

  def unfold() do
    stream = Stream.unfold("hello", &String.next_codepoint/1)
    Enum.take(stream, 3)
  end

  def file_stream() do
    stream = File.stream!("/tmp/a")
  end

  def read_n_lines(stream, initial, n) do
    page = Enum.slice(stream, initial, n)
    if page != [] do
      IO.inspect(page)
      read_n_lines(stream, initial+n, n)
    end
  end
end

IO.inspect(Streams.composable())
IO.inspect(Streams.cycle())
IO.inspect(Streams.unfold())

stream = Streams.file_stream()
Streams.read_n_lines(stream, 0, 10)
