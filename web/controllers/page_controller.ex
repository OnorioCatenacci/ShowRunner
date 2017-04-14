defmodule Showrunner.PageController do
  use Showrunner.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
