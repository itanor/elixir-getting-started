defmodule Typespec.Person do
  @typedoc """
  A four digit year, e.g. 1982
  """
  @type year :: integer

  @spec current_age(year) :: integer
  def current_age(year_of_bith) when is_integer(year_of_bith) do
    diff = Date.utc_today().year - year_of_bith
    if diff >= 0 do
      {:ok, _current_age} = {:ok, diff}
    else
      {:error}
    end
  end
end
