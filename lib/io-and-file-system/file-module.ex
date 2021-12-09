defmodule FileModule do
  def write_on_file(filename, content) do
    {:ok, file} = File.open(filename, [:append])
    IO.binwrite(file, content)
    File.close(file)
  end

  def read_from_file(filename) do
    File.read(filename)
  end
end
