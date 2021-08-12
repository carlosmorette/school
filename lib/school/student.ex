defmodule School.Student do
  alias School.Repo
  alias School.Schemas.Student

  def find(id) do
    Repo.get(Student, id)
  end

  def list() do
    Repo.all(Student)
  end

  def create(student) do
    %Student{}
    |> Student.changeset(student)
    |> Repo.insert()
  end
end
