defmodule Keywordlists do

  def list_of_tuples_with_atom_as_first_item_is_a_keywordlist() do
    list = [{:a, 1}, {:b, 2}]
    new_list = list ++ [{:c, 3}]
    [a: 0] ++ new_list
  end

  def access_value_in_keyword_list() do
    list = [{:a, 1}, {:b, 2}]
    new_list = list ++ [{:c, 3}]
    new_list[:c]
  end
end

IO.inspect Keywordlists.list_of_tuples_with_atom_as_first_item_is_a_keywordlist()
IO.puts Keywordlists.access_value_in_keyword_list()
