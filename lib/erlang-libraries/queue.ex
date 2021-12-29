defmodule ErlangQueue do
  def test_queue do
    q = :queue.new
    q = :queue.in("A", q)
    q = :queue.in("B", q)

    {value, q} = :queue.out(q)
    IO.inspect(value)

    {value, q} = :queue.out(q)
    IO.inspect(value)

    {value, q} = :queue.out(q)
    IO.inspect(value)
  end
end
