defmodule Group do
  import Poison

  @enforce_keys [:id, :users, :name]
  defstruct [:id, :users, :name]

  def add(user, to_group) do
    to_group = %{to_group | users: [user | to_group.users]}
    to_group
  end

  def new_with(id, name, user) do
    %Group{id: id, name: name, users: [user]}
  end

  def to_json(group) do
    {:ok, result} = Poison.encode(group)  
  end
end
