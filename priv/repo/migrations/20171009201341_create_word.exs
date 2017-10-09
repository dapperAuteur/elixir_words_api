defmodule ElixirWordsApi.Repo.Migrations.CreateWord do
  use Ecto.Migration

  def change do
    create table(:words) do
      add :word, :string
      add :s_points, :integer
      add :f_points, :integer
      add :in_game, :boolean
      add :tongue, :string

      timestamps()
    end

    create unique_index(:words, [:word])

  end
end
