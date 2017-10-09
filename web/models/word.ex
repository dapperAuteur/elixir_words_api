defmodule ElixirWordsApi.Word do
  use ElixirWordsApi.Web, :model

  schema "words" do
    field :word, :string
    field :s_points, :integer
    field :f_points, :integer
    field :in_game, :boolean
    field :tongue, :string

    timestamps()
  end

  def changeset(model, params \\ :empty) do
    model
      |> cast(params, [:word, :s_points, :f_points, :in_game, :tongue])
      |> unique_constraint(:word)
  end
end
