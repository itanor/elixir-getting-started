defmodule UnicodeCodePoints do

  def revealCodePoint() do
    [?a, ?ł, "\u0061", "a", 0x0061]
  end

end

IO.inspect UnicodeCodePoints.revealCodePoint()
