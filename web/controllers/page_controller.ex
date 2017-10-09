defmodule ElixirWordsApi.PageController do
  use ElixirWordsApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
