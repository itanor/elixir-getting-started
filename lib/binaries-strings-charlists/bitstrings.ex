defmodule BitStrings do

  def bitstring() do
    <<42>> === <<42::8>>
  end

  def number3RepresentedIn4Bits() do
    <<0::1, 0::1, 1::1, 1::1>> == <<3::4>>
  end
end

IO.puts BitStrings.bitstring()
IO.puts BitStrings.number3RepresentedIn4Bits()
