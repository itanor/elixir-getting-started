defmodule IfModule do

  def ifMacro do
    if true do
      "This is true"
    end
  end

  def ifMacroWithElse do
    if false do
      "This wont be seen"
    else
      "Inside else"
    end
  end

  def unlessMacro(val) do
    unless val > 0 do
      "#{val} > 0"
    end
  end

  def returnValueFromIf(val) do
    x = 1
    x = if val > 0 do
      x + 2
    else
      x + 5
    end
  end

  def doEndBlocks(val) do
    if val > 0, do: 1 + 2, else: 10
  end
end

IO.puts IfModule.ifMacro()
IO.puts IfModule.unlessMacro(-1)
IO.puts IfModule.unlessMacro(1)
IO.puts IfModule.returnValueFromIf(5)
IO.puts IfModule.doEndBlocks(-1)
IO.puts IfModule.doEndBlocks(1)
