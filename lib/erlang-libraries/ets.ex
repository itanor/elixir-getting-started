defmodule ErlangTermStorage do
  def use_ets do
    table = :ets.new(:ets_test, [])
    :ets.insert(table, {"China", 1_374_000_000})
    :ets.insert(table, {"India", 1_284_000_000})
    :ets.insert(table, {"USA", 322_000_000})
    :ets.i(table)
  end
end
