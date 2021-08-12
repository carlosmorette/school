defmodule School.Exam do
  import Ecto.Query

  alias School.Repo
  alias School.Schemas.{Exam, Student, Teacher}

  def find(id) do
    query =
      from e in Exam,
        where: e.id == ^id,
        inner_join: s in Student,
        on: s.id == e.student_id,
        inner_join: t in Teacher,
        on: t.id == e.teacher_id,
        preload: [student: s, teacher: t]

    Repo.one(query)
  end

  def list() do
    query =
      from e in Exam,
        inner_join: s in Student,
        on: s.id == e.student_id,
        inner_join: t in Teacher,
        on: t.id == e.teacher_id,
        preload: [student: s]

    Repo.all(query)
  end

  def create(exam) do
    %Exam{}
    |> Exam.changeset(exam)
    |> Repo.insert()
  end
end
