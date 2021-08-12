defmodule School.Teacher do
  alias School.Repo
  alias School.Schemas.Teacher

  def find(id), do: Repo.get(Teacher, id)

  def list(), do: Repo.all(Teacher)

  def create(teacher) do
    %Teacher{}
    |> Teacher.changeset(teacher)
    |> Repo.insert()
  end
end
