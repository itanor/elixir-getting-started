defmodule User do
  @enforce_keys [:id]
  defstruct [:id, :name, :age]

  def swap(from_user, to_user) do
    swap_user = to_user
    to_user = from_user
    from_user = swap_user

    {from_user, to_user}
  end
end
