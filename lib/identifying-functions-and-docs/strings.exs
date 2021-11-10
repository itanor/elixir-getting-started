IO.puts("hellö")

# string interpolation
string = :world
IO.puts("hellö #{string}")

# line break strings
IO.puts("hellö\nworld")

is_binary = is_binary("hellö")
# strings are represented by contiguous sequences of bytes known as binaries
IO.puts("hellö is binary: #{is_binary}")

# number of bytes in a string
bytes = byte_size("hellö")
IO.puts("size of hellö: #{bytes}")

# length of a string
length_of_hello = String.length("hellö")
IO.puts("length of hello: #{length_of_hello}")

IO.puts(String.upcase("hellö"))
