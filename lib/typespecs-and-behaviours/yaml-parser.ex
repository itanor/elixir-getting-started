defmodule YAMLParser do
  @behaviour Parser

  @impl Parser
  def parse(str), do: {:ok, "some yml " <> str}

  @impl Parser
  def extensions, do: ["yml", "yaml"]
end
