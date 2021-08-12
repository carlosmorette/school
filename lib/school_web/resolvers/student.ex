defmodule SchoolWeb.Resolvers.Student do
  def get(_parent, %{id: id}, _resolution) do
    id
    |> School.Student.find()
    |> case do
      nil ->
        {:error, "Student ID #{id} not found"}

      user ->
        {:ok, user}
    end
  end

  def get(_parent, _args, _resolution) do
    {:ok, School.Student.list()}
  end

  def create_student(_parent, args, _) do
    School.Student.create(args)
  end
end
