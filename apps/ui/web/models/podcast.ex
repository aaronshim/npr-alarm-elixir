defmodule Ui.Podcast do
  use Ui.Web, :model

  schema "podcasts" do
    field :name, :string
    field :url, :string
    field :last_played_episode, Timex.Ecto.DateTime
    field :last_played_at, Timex.Ecto.DateTime
    field :play_at, Timex.Ecto.Time

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :url, :last_played_episode, :last_played_at, :play_at])
    |> validate_required([:name, :url, :last_played_episode, :last_played_at, :play_at])
  end
end
