defmodule School.Schemas.Student do
  use Ecto.Schema
  import Ecto.Changeset

  schema "students" do
    field :full_name, :string
    field :email, :string
  end

  def changeset(student, attrs) do
    student
    |> cast(attrs, [:full_name, :email])
    |> validate_required([:full_name])
  end
end
