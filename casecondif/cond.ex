defmodule Cond do

  def doCond(val) do
    cond do
      2 + 2 == val ->
        "2 + 2"
      2 * 2 == val ->
        "2 * 2"
      1 + 1 == val ->
        "1 + 1"
    end
  end

  def condWithFinalCondition(val) do
    cond do
      2 + 2 == val ->
        "2 + 2"
      2 * 2 == val ->
        "2 * 2"
      1 + 1 == val ->
        "1 + 1"
      true         ->
        "This is always true (equivalent to else)"
    end
  end

  def anyValueBesidesNilAndFalseWillBeTrue do
    cond do
      hd([1,2,3]) ->
        "1 is considered as true"
    end
  end
end

IO.puts Cond.doCond(4)
IO.puts Cond.doCond(2)

IO.puts Cond.condWithFinalCondition(4)
IO.puts Cond.condWithFinalCondition(6)
IO.puts Cond.anyValueBesidesNilAndFalseWillBeTrue()
