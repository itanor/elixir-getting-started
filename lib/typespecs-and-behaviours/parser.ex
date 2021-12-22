defmodule Parser do
  @doc """
  Parses a string.
  """
  @callback parse(String.t) :: {:ok, term} | {:error, String.t}

  @doc """
  Lists all supported file extensions.
  """
  @callback extensions() :: [String.t]

  def parse!(impl, contents) do
    case impl.parse(contents) do
      {:ok, data} -> data
      {:error, error} -> raise ArgumentError, "parsing error #{error}"
    end
  end
end
