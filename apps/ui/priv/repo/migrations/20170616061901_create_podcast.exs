defmodule Ui.Repo.Migrations.CreatePodcast do
  use Ecto.Migration
  use Timex.Ecto.Timestamps

  def change do
    create table(:podcasts) do
      add :name, :string
      add :url, :string
      add :last_played_episode, :utc_datetime
      add :last_played_at, :utc_datetime
      add :play_at, :utc_datetime

      timestamps()
    end

  end
end
