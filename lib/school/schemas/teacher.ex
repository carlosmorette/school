defmodule School.Schemas.Teacher do
  use Ecto.Schema
  import Ecto.Changeset

  schema "teachers" do
    field :full_name, :string
    field :email, :string
    field :theme, :string
  end

  def changeset(teacher, attrs) do
    teacher
    |> cast(attrs, [:full_name, :email, :theme])
    |> validate_required([:full_name, :theme])
  end
end
