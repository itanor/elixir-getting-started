add = fn a, b -> a + b end

IO.puts(is_function(add))
IO.puts(add.(1, 2))

# test if is function with number of params
IO.puts(is_function(add, 2))
IO.puts(is_function(add, 1))

double = fn a -> add.(a, a) end
IO.puts(double.(5))

IO.puts((fn -> x = 0 end).())
IO.puts((fn -> 1 end).())
