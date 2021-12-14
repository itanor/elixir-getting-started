defmodule NamedFunctions do
  def sum(a, b), do: do_sum(a, b)
  defp do_sum(a, b), do: a + b

  def zero?(0), do: true
  def zero?(x) when is_integer(x), do: false
end

IO.puts NamedFunctions.sum(1, 2)
#Io.puts NamedFunctions.do_sum(1, 2) # UndefinedFunctionError

IO.puts NamedFunctions.zero?(0)
IO.puts NamedFunctions.zero?(1)
#IO.puts NamedFunctions.zero?([1,2,3])  #FunctionClauseError
#IO.puts NamedFunctions.zero?(0.0)      #FunctionClauseError
