defmodule MarkappPhx.HelloController do
  use MarkappPhx.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  # def resume(conn, _params) do
  #   render conn, "resume.html"
  # end

  def show(conn, %{"messenger" => messenger}) do
    render conn, "show.html", messenger: messenger
  end
end
