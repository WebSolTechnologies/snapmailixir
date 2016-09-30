defmodule Snapmailixir.PageController do
  use Snapmailixir.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
