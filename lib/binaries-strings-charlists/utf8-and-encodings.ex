defmodule Utf8AndEncodings do

  def stringSizes() do
    string = "héllo"
    %{
      lengthString: String.length(string), 
      lengthCharlist: length(String.to_charlist(string)),
      byteSize: byte_size(string)
    }
  end

  def binaryRepresentationCancatenatingNullByte() do
    "hełło" <> <<0>>
  end

  def binaryRepresentationUsingInspect() do
    IO.inspect("hełło", binaries: :as_binaries)
  end

end

IO.inspect Utf8AndEncodings.stringSizes()
IO.inspect Utf8AndEncodings.binaryRepresentationCancatenatingNullByte()
IO.inspect Utf8AndEncodings.binaryRepresentationUsingInspect()
