defmodule ErlangZlib do
  def data_compress do
    song = """
    Mary had a little lamb,
    His fleece was white as snow,
    And everywhere that Mary went,
    The lamb was sure to go.
    """

    compressed = :zlib.compress(song)
    IO.puts(byte_size(song))
    IO.puts(byte_size(compressed))

    :zlib.uncompress(compressed)
  end
end
