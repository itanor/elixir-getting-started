defmodule Communicate do
  def send_message_to(pid, pattern) do
    send(pid, pattern)
  end
end
