defmodule Point3D do
  defstruct [:x, :y, :z]
end

defimpl Size, for: Point3D do
  def size(point3d) do
    [point3d.x, point3d.y, point3d.z] 
      |> Enum.filter(& &1 != nil)
      |> Enum.count

    #Map.keys(point3d)
    #  |> Enum.filter(& &1 != :__struct__)
    #  |> Enum.count
  end
end
