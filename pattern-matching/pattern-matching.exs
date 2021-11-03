{a, b, c} = {:hello, "world", 42}
IO.puts "#{a} #{b} #{c}"

# different sizes
# {d, e, f} = {:hello, "string"}

# different types
# {g, h, i} = [:hello, "world", 42]

{:ok, result} = {:ok, 15}
IO.puts "#{result}"

# do not match :ok atom ...
# {:ok, result} = {:error, :oops}

# pattern matching on lists
[x, y, z] = [1, 2, 3]
IO.puts "#{x} #{y} #{z}"

[head | tail] = ["john", "the", "fisherman"]
IO.puts "#{head}"
IO.inspect tail

# cannot match an empty list
# [head | tail] = []

list = [1,2,3]
list = [0|list]
IO.inspect list
