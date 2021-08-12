defmodule SchoolWeb.Schema do
  use Absinthe.Schema

  import_types(SchoolWeb.Schema.DataTypes)

  alias SchoolWeb.Resolvers

  query do
    # student
    @desc "Get all students"
    field :students, list_of(:student) do
      resolve(&Resolvers.Student.get/3)
    end

    @desc "Get student by id"
    field :student, :student do
      arg(:id, non_null(:id))
      resolve(&Resolvers.Student.get/3)
    end

    # teacher
    @desc "Get all teachers"
    field :teachers, list_of(:teacher) do
      resolve(&Resolvers.Teacher.get/3)
    end

    @desc "Get teacher by id"
    field :teacher, :teacher do
      arg(:id, non_null(:id))
      resolve(&Resolvers.Teacher.get/3)
    end

    # exam
    @desc "Get all exams"
    field :exams, list_of(:exam) do
      resolve(&Resolvers.Exam.get/3)
    end

    @desc "Get exam by id"
    field :exam, :exam do
      arg(:id, non_null(:id))
      resolve(&Resolvers.Exam.get/3)
    end
  end

  mutation do
    @desc "Create a student"
    field :create_student, :student do
      arg(:full_name, non_null(:string))
      arg(:email, non_null(:string))

      resolve(&Resolvers.Student.create_student/3)
    end
  end
end
