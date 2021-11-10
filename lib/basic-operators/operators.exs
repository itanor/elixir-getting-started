IO.inspect [1, 2, 3] ++ [4, 5, 6]
IO.inspect [1, 2, 3] -- [2, 5]

concat_strings = fn str1, str2 -> str1 <> str2 end

IO.puts concat_strings.("abc", "def")
IO.puts true and true

IO.puts false or is_atom(:example)
IO.puts false and raise("never be raised")
IO.puts true or raise("never be raised")

IO.puts 1 || true
IO.puts false || 11
IO.puts nil && 13
IO.puts true && 17
IO.puts !true
IO.puts !1
IO.puts !nil

IO.puts 1 == 1
IO.puts 1 != 2
IO.puts 1 < 2

IO.puts 1 == 1.0
IO.puts 1 === 1.0

# number < atom < reference < function < port < pid < tuple < map < list < bitstring
IO.puts 1 < :atom
IO.puts :atom < concat_strings
IO.puts concat_strings < concat_strings
