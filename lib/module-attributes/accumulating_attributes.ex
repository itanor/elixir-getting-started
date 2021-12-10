defmodule AccumulatingAttributes do
  Module.register_attribute __MODULE__, :param, accumulate: true

  @param :foo
  @param :bar
  def accumulating_attributes do
    @param
  end
end
