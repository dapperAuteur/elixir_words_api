defmodule ElixirWordsApi.Repo do
  use Ecto.Repo, otp_app: :elixir_words_api
  use Kerosene, per_page: 100
end
