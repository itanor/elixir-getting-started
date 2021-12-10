defmodule Constants do
  @initial_state %{host: "127.0.0.1", port: 3456}
  @service URI.parse("https://example.com")

  def server_initial_state do
    IO.inspect @initial_state
  end

  def service do
    @service
  end
end
