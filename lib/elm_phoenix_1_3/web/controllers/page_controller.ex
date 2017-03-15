defmodule ElmPhoenix13.Web.PageController do
  use ElmPhoenix13.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
