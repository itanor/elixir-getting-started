defmodule IOModule do
  def gets() do
    IO.gets("yes or now? ")
  end

  def getn(codepoint_count) do
    IO.getn("a number: ", codepoint_count)
  end
end
