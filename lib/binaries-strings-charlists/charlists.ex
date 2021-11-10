defmodule Charlists do

  def charlistHasSingleQuotes() do
    'hello'
  end

  def charlistAsIntegerCodePoints() do
    [?h, ?e, ?l, ?l, ?o]
  end

  def concatenateCharlists() do
    'one list' ++ ' ' ++ 'other list'
  end

  def this_do_not_work() do
    # 'list1 ' <> 'list 2'
  end
end

IO.puts Charlists.charlistHasSingleQuotes()
IO.puts Charlists.charlistAsIntegerCodePoints()
IO.puts Charlists.concatenateCharlists()
IO.puts Charlists.this_do_not_work()