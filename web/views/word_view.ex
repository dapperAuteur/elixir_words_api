defmodule ElixirWordsApi.WordView do
  use ElixirWordsApi.Web, :view
  import Kerosene.JSON

  def render("index.json", %{words: words, kerosene: kerosene, conn: conn}) do
    %{data: render_many(words, ElixirWordsApi.WordView, "word.json"), pagination: paginate(conn, kerosene)}
  end

  def render("word.json", %{word: word}) do
    %{id: word.id,
      word: word.word,
      s_points: word.s_points,
      f_points: word.f_points,
      in_game: word.in_game,
      tongue: word.tongue}
  end
end
