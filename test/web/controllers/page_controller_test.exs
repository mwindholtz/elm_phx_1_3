defmodule ElmPhoenix13.Web.PageControllerTest do
  use ElmPhoenix13.Web.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Hello From Phoenix index.html.eex"
    assert html_response(conn, 200) =~ "<div id=\"elm-main\"></div>"
  end
end
