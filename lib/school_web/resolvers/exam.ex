defmodule SchoolWeb.Resolvers.Exam do
  def get(_parent, %{id: id}, _resolution) do
    id
    |> School.Exam.find()
    |> case do
      nil ->
        {:error, "Exam ID #{id} not found"}

      exam ->
        {:ok, exam}
    end
  end

  def get(_parent, _args, _resolution) do
    {:ok, School.Exam.list()}
  end
end
