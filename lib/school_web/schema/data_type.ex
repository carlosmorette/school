defmodule SchoolWeb.Schema.DataTypes do
  use Absinthe.Schema.Notation

  @desc "A user of the school"
  object :student do
    field :id, :id
    field :full_name, :string
    field :email, :string
  end

  object :teacher do
    field :id, :id
    field :full_name, :string
    field :theme, :string
  end

  object :exam do
    field :score, :integer
    field :exam_day, :string
    field :student_id, :integer
    field :teacher_id, :integer
    field :teacher, :teacher
    field :student, :student
  end
end
