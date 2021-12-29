defmodule ErlangMathModule do
  def sin_45_degree do
    angle_45_deg = :math.pi() * 45.0 / 180
    :math.sin(angle_45_deg)
  end

  def exp do
    :math.exp(55.0)
  end

  def log do
    :math.log(7.694785265142018e23)
  end
end
