defmodule PathModule do
  def join(pre, pos) do
    Path.join(pre, pos)
  end

  def expand(pos) do
    Path.expand(pos)
  end
end
