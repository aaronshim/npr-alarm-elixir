defmodule :"Elixir..Podcast"Test do
  use .ModelCase

  alias :"Elixir..Podcast"

  @valid_attrs %{last_played_at: "some content", last_played_episode: "some content", name: "some content", play_at: "some content", url: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Podcast".changeset(%Podcast"{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Podcast".changeset(%Podcast"{}, @invalid_attrs)
    refute changeset.valid?
  end
end
