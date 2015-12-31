defmodule MarkappPhx.Router do
  use MarkappPhx.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MarkappPhx do
    pipe_through :browser # Use the default browser stack

    get "/", HelloController, :index
    get "/hello", HelloController, :index
    # get "/hello/resume", HelloController, :resume
    get "/hello/:messenger", HelloController, :show
  end
end
