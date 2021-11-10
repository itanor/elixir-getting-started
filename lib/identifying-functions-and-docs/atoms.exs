IO.puts(:apple == :apple)
IO.puts(:apple == :orange)
IO.puts(true == :true)

# false, true and nil are atoms and can be used without :
IO.puts(is_atom(false))
IO.puts(is_atom(true))
IO.puts(is_atom(:true))
IO.puts(is_atom(:false))
IO.puts(is_atom(:some_atom))
IO.puts(is_atom(nil))

# Aliases start in upper case and are also atoms
IO.puts(is_atom(Hello))
