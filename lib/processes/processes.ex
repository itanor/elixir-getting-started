defmodule Processes do
  def send_to_self(number) do
    spawn(fn -> receive() end)
  end

  def receive() do
    receive do
      {:some, number, pid} -> IO.puts("received #{number} from pid #{inspect pid}")
      {_, _number, _pid} -> IO.puts("other atom")
    end
    receive()
  end
end
