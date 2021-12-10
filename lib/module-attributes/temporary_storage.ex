defmodule TemporaryStorage do
  Module.register_attribute __MODULE__, :tag, accumulate: true

  @tag :external
  @tag os: :unix
  def some_method do
    @tag
  end
end
