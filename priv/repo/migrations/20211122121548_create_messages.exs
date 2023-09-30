defmodule LiveviewChat.Repo.Migrations.CreateMessages do
  use Ecto.Migration

  def change do
    create table(:messages) do
      add :name, :string
      add :message, :text
      add :type, :string

      timestamps()
    end
  end
end
