defmodule SchoolWeb.Resolvers.Teacher do
  def get(_parent, %{id: id}, _resolution) do
    id
    |> School.Teacher.find()
    |> case do
      nil -> {:error, "Teacher ID #{id} not found"}
      teacher -> {:ok, teacher}
    end
  end

  def get(_parent, _args, _resolution) do
    {:ok, School.Teacher.list()}
  end
end
