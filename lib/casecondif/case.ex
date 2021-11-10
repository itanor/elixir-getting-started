defmodule Case do

  def matchTuple do
    case {1, 2, 3} do
      {4, 5, 6} ->
        "This clause won't match"
      {1, x, 3} ->
        "This clause will match and bind x to #{x} ins this clause"
      _ ->
        "This clause would match any value"
    end
  end

  def matchUniqueVar(val) do
    x = 1
    case val do
      ^x -> "Match #{x}"
      _  -> "Will match"
    end
  end

  def clauseWithGuards(tuple) do
    case tuple do
      {1, x, 3} when x > 0 ->
        "Match when x > 0"
      _ ->
        "Would match, if guard condition were not satisfied"
    end
  end

  def guardDoNotLeakOnlyGuardFail(val) do
    case val do
      x when hd(x) ->
        "head of 1 give an error. Won't match"
      x ->
        "Got #{x}"
    end
  end

  def ifNoneClauseMatchErrorIsRaise do
    case :ok do
      :error -> 
        "Won't match"
    end
  end

  def anonymousFunctionWithClausesAndGuards({a,b,c,d}) do
    f = fn
      x, y when x > 0 -> x + y
      x, y            -> x * y
    end
    {f.(a, b), f.(c, d)}
  end
end

IO.puts Case.matchTuple()
IO.puts Case.matchUniqueVar(1)
IO.puts Case.matchUniqueVar(2)
IO.puts Case.clauseWithGuards({1, 2, 3})
IO.puts Case.clauseWithGuards({1, -2, 3})
IO.puts Case.guardDoNotLeakOnlyGuardFail(1)
#IO.puts Case.ifNoneClauseMatchErrorIsRaise()
IO.inspect Case.anonymousFunctionWithClausesAndGuards({1,3,-2,4})
