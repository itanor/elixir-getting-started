tuple = {:ok, "hellö", 12}
IO.inspect(tuple, label: "tuple is")

tuple_length = fn tuple -> tuple_size tuple end
IO.puts("tuple_length: #{tuple_length.(tuple)}")

IO.puts("tuple first element: #{elem(tuple, 0)}")
IO.puts("tuple_length: #{tuple_length.(tuple)}")

IO.inspect(put_elem(tuple, 0, "6"), label: "tuple with put_elem is")
IO.inspect(tuple, label: "tuple is")

