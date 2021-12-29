defmodule Crypto do
  def use_erlang_crypto_module do
    Base.encode16(:crypto.hash(:sha256, "Elixir"))
  end
end
