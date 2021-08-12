defmodule School.Repo.Migrations.AddStudentsTable do
  use Ecto.Migration

  def change do
    create table(:students) do
      add :full_name, :string
      add :email, :string
    end
  end
end
