defmodule School.Repo.Migrations.AddTeachersTable do
  use Ecto.Migration

  def change do
    create table(:teachers) do
      add :full_name, :string
      add :email, :string
      add :theme, :string
    end
  end
end
