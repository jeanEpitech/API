defmodule ApiDevWeb.PageController do
  use ApiDevWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def new(conn, _params) do
    render(conn, "index.html")
  end

  def createUser(conn, _params) do
    render(conn, "index.html")

  end

  def updateUser(conn, %{"id" => id}) do
    render(conn, "index.html")
  end

  def deleteUser(conn, %{"id" => id}) do
    render(conn, "index.html")
  end

  def indexWorkT(conn, _params) do
    render(conn, "index.html")
  end
  
  def getWorkT(conn, %{"id" => id}) do
    render(conn, "index.tml")
  end

  def createWorkT(conn, _params) do
    render(conn, "index.html")
  end

  def updateWorkT(conn, %{"id" => id}) do
    render(conn, "index.html")
  end

  def deleteWorkT(conn, %{"id" => id}) do
    render(conn, "index.html")
  end

  def getClock(conn, %{"id" => id}) do
    render(conn, "index.html")
  end

  def createClock(conn, _params) do
    render(conn, "index.html")
  end
end