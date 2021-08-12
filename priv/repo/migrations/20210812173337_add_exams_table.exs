defmodule School.Repo.Migrations.AddExamsTable do
  use Ecto.Migration

  def change do
    create table(:exams) do
      add :score, :integer
      add :exam_day, :date
      add :student_id, references(:students)
      add :teacher_id, references(:teachers)
    end
  end
end
