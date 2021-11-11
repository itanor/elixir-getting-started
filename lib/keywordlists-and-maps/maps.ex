defmodule Maps do

  def build_map() do
    %{:a => 1, :b => 2}
  end

  def access_map_value() do
    map = %{:a => 1, :b => 2}
    map[:b]
  end

  def varable_on_add_map_key() do
    n = 1
    %{n => :one}
    %{^n => :one} = %{1 => :one, 2 => :two, 3 => :three}
  end

  def get_map_value() do
    Map.get(%{:a => 1, :b => 2, :c => 3}, :b)
  end

  def put_map_value() do
    map = %{:a=>1, :b=>2}
    new_map = Map.put(map, :c, 5)
    Map.get(new_map, :c)
  end

  def map_to_list() do
    map = %{:a=>1, :b=>2}
    Map.to_list(map)  
  end

  def update_key_value() do
    map = %{:a=>1, :b=>2}
    updated = %{map | :b=>"b letter"}
    IO.inspect map
    updated
  end

  def nested_data_structures() do
    users = [
      john: %{name: "John", age: 27, languages: ["Erlang", "Ruby", "Elixir"]},
      mary: %{name: "Mary", age: 29, languages: ["Elixir", "F#", "Clojure"]}
    ]
    IO.puts users[:john].age
    _ = put_in users[:john].age, 31
    update_in users[:mary].languages, fn langs ->  
      List.delete langs, "Clojure"
    end
  end
end

IO.inspect Maps.build_map()
IO.puts Maps.access_map_value()
IO.inspect Maps.varable_on_add_map_key()
IO.puts Maps.get_map_value()
IO.puts Maps.put_map_value()
IO.inspect Maps.map_to_list()
IO.inspect Maps.update_key_value()
IO.inspect Maps.nested_data_structures()
