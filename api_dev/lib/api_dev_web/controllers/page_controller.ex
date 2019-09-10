defmodule ApiDevWeb.PageController do
  use ApiDevWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
