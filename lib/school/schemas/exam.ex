defmodule School.Schemas.Exam do
  use Ecto.Schema
  import Ecto.Changeset

  alias School.Schemas.{Student, Teacher}

  schema "exams" do
    field :score, :integer
    field :exam_day, :date

    belongs_to :student, Student
    belongs_to :teacher, Teacher
  end

  def changeset(teacher, attrs) do
    teacher
    |> cast(attrs, [
      :score,
      :exam_day,
      :student_id,
      :teacher_id
    ])
    |> validate_required([
      :score,
      :exam_day,
      :student_id,
      :teacher_id
    ])
  end
end
